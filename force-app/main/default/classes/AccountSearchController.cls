public with sharing class AccountSearchController {
    public AccountSearchController() {

    }
    @AuraEnabled(cacheable=true)
    public static String getpostSAML(String accountName){
        String returnValue = 'Failed. Please contact your system administrator';
        User u = [SELECT Id, Org2_User_Name__c from User where Id = : Userinfo.getUserId()];
        if(u.Org2_User_Name__c!=null && u.Org2_User_Name__c!=''){
                SAMLBearerAssertion obj = new SAMLBearerAssertion(u.Org2_User_Name__c);
                httpResponse resp = obj.getpostSAML();
                if(resp.getStatusCode() == 200){
                Map<String,object> resJson = (Map<string,object>)System.JSON.deserializeUntyped(resp.getBody());
                string accessToken = string.valueOf(resJson.get('access_token'));
                system.debug('accessToken +'+ '@'+accessToken+'@');
                system.debug('instance_url +'+ string.valueOf(resJson.get('instance_url')));
                http h = new http();
                httpRequest req = new httpRequest();
                req.setHeader('Content-Type','application/json');
                req.setHeader('Authorization','Bearer '+accessToken);
                req.setMethod('GET');
                String qStr = 'https://brave-raccoon-144928-dev-ed.my.salesforce.com/services/data/v45.0/query/?q=SELECT+Id,Name,BillingCountry,(SELECT+Id+from+Contacts),(SELECT+Id+from+Opportunities+where+isClosed=false)+from+Account+where+Name+LIKE'+EncodingUtil.urlEncode('\''+'%'+accountName+'%'+'\'','UTF-8');
                req.setEndpoint(qStr);
                httpResponse res = h.send(req);
                System.debug('\n\nRESPONSE: ' + res.getBody());
                System.debug('\n\nRESPONSE: ' + res.getStatusCode() + '  ' + res.getStatus());
                return  res.getBody();
            }
            else{
                returnValue =  'Authorization issue';
            }
            
        }
        else{
            returnValue =  'No user available in Org2';
        }
        return returnValue;
        

    }
    /*public static string getAccessToken(){
        http h = new http();
        httpRequest req = new httpRequest();
        req.setHeader('Content-Type','application/json');
        req.setMethod('POST');
       // req.setBody(requestBody);
        req.setEndpoint('https://login.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9d8..z.hDcPL3wBZPPGQlcZT8jkM6OYfazrgPLsb_.7p566LevyiMHcU66vC5wdmuwu3DZg1SyJIFJQOo&client_secret=9FDC3ECED6443726F2DF59DB8299C1469866D018A486DED38AFECEC3C1129FEA&username=vamsikrishna.mopidevi@brave-raccoon-144928.com&password=Krishna1@1H3wo9TMv0aVWTYEu9e3rhpWD');
        httpResponse res = h.send(req);
        System.debug('\n\nRESPONSE: ' + res.getBody());
        System.debug('\n\nRESPONSE: ' + res.getStatusCode() + '  ' + res.getStatus()); 
        Map<String,object> resJson = (Map<string,object>)System.JSON.deserializeUntyped(res.getBody());
        return string.valueOf(resJson.get('access_token'));
    }*/
}
