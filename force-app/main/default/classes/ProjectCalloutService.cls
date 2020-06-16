Global with sharing class ProjectCalloutService {
    @InvocableMethod
    public static void PostOpportunityToPMS(List<id> ids){
      
       System.enqueueJob(new QueueablePMSCall(ids));
        
    }
    
    public class QueueablePMSCall implements Queueable, Database.AllowsCallouts{
        List<string> ids;
       // string stageName;
        public QueueablePMSCall(List<string> ids){
            this.ids=ids;
        }
        
        public void execute(QueueableContext qc){
        HttpResponse response = new Httpresponse();
        if(ids.size()>0)
        {
             List<Opportunity> opps = [SELECT Id, Name, Account.name, CloseDate, Amount from Opportunity where id = :ids];
            string token = ServiceTokens__c.getValues('ProjectServiceToken').Token__c;
            system.debug('token custom'+token);
            HttpRequest request = new HttpRequest();
            request.setEndpoint('Callout:ProjectService');
            request.setMethod('POST');
            request.setHeader('token',token) ;
            request.setHeader('Content-Type', 'application/json');
            string jsonS = '{';
            jsonS = jsonS+'"opportunityId": "'+opps[0].id+'", ';
             jsonS = jsonS+' "opportunityName": "'+opps[0].name+'", ';
             jsonS = jsonS+'"accountName": "'+opps[0].account.name+'",' ;
             jsonS = jsonS+'"closeDate": "'+opps[0].closeDate+'", ';
             jsonS = jsonS+'"amount": '+opps[0].amount;
             jsonS = jsonS+'}';
            System.debug(jsonS);
            request.setBody(jsonS);
            Http http = new Http();
            response = http.send(request);
            string stageName;
            System.debug('vamsi+++'+ response.getBody());
            if(response.getStatusCode()==201){
               opps[0].stageName ='Submitted Project';
                
            }
            else
            {
                opps[0].stageName ='Resubmit Project';
            }
            update opps[0];
            
        }
        
        }
        
    }

}