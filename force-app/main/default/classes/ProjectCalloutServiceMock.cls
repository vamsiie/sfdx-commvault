@isTest
Global class ProjectCalloutServiceMock implements HttpCalloutMock {
   //Implement http mock callout here
    global HTTPResponse respond(HttpRequest req){
        HTTPResponse response = New HttpResponse();
        response.setStatusCode(201);
        response.setStatus('Success ');
        response.setBody('Created');
        return response;
        
    }
   
}