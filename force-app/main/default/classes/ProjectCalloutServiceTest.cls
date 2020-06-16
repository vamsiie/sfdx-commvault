@isTest(seeAllData=true)
private class ProjectCalloutServiceTest {
  //Implement mock callout tests here
  @isTest
    public static void testCalloutService(){
        List<id> ids =new List<id>{testdata()};
            Test.startTest();
        Test.setMock(HttpCalloutMock.class, new ProjectCalloutServiceMock() );
        
        //Httpresponse response = 
            ProjectCalloutService.PostOpportunityToPMS(ids);
        test.stopTest();
       // System.debug('HttpResponse vamsi' + response );
    }
    public static string testdata(){
        Opportunity opp = new Opportunity(name='Test 123', stageName ='Closed Won', Type= 'New Project', closedate=System.Today());
        insert opp;
        return opp.id;
    }
}