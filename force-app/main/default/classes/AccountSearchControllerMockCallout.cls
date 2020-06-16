public with sharing class AccountSearchControllerMockCallout implements HttpCalloutMock   {
    Boolean accessToken =true;
    Boolean createSuccess = false;
    public AccountSearchControllerMockCallout( Boolean accessToken, Boolean createSuccess){
        this.accessToken = accessToken;
        this.createSuccess = createSuccess;
    }
    // Implement this interface method
    public HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        Map<String,String> JsonMap = new Map<String,String>();
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type', 'application/json');
        String endPoint = request.getEndpoint();
        response.setStatusCode(200);
        if(endPoint.contains('/oauth2/token') && accessToken){
            response.setBody('{"access_toen":"0","instance_url":"login.salesforce.com"}');
        }
        else if(endPoint.contains('/oauth2/token') && !accessToken){
            response.setBody('Error Sir!!');
            response.setStatusCode(401);
        }
        else if(endPoint.contains('services/data/v45.0/query/?q=SELECT+Id,Name') && createSuccess){
            response.setBody('{"success":true,"message":"","result":56293}');
            
        }
        else if(endPoint.contains('services/data/v45.0/query/?q=SELECT+Id,Name') && !createSuccess){
            response.setBody('Error Sir!!');
            response.setStatusCode(401);
        }
        return response; 
    }
}
