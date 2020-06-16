@isTest
global class ProjectCalloutServiceMockFailure implements HttpCalloutMock {
   //Implement http mock callout failure here 
    public static HTTPResponse respond(HttpRequest req){
        Httpresponse response = new Httpresponse();
        response.setBody('Bad Request. Your JSON does not contain the correct case-sensitive keys. Please reference the sample JSON.');
        response.setStatusCode(500);
        return response;
    }
}