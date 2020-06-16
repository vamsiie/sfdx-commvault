global class BillingCalloutServiceMock implements System.WebServiceMock {
   //Implement http mock callout here
  global void doInvoke(
           Object stub,
           Object request,
           Map<String, Object> response,
           String endpoint,
           String soapAction,
           String requestName,
           String responseNS,
           String responseName,
           String responseType) {
      /* docSample.EchoStringResponse_element respElement = 
           new docSample.EchoStringResponse_element();
       respElement.EchoStringResult = 'Mock response';
       response.put('response_x', respElement); */
         BillingServiceProxy.billProjectResponse_element  resp = new BillingServiceProxy.billProjectResponse_element ();
         resp.status='Ok';
               response.put('response_x', resp);
               
   }
    
}