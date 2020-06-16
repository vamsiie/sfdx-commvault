@isTest
private class ProjectRESTServiceTest {
  //Implement Apex REST service tests here
  @isTest
    public static void testRestService(){
        Opportunity opp = testSetup();
        ProjectRESTService.postProjectData('74e92b5c-c356-42f0-b5c9-2275e7404191',opp.Name,opp.Id,System.today(), System.today()+3,opp.Amount,'Running');
         ProjectRESTService.postProjectData('',opp.Name,opp.Id,System.today(), System.today()+3,opp.Amount,'Running');
        
    }
    public static Opportunity testSetup(){
        Opportunity opp = new Opportunity();
        opp.name='Opp Name';
        opp.StageName='Closed Won';
        opp.Type='New Project';
        opp.CloseDate = System.today()+3;
        opp.Amount=1000;
        insert opp;
        return opp;
        
    }
}