@isTest(seeAllData=true)
private class BillingCalloutServiceTest {
  //Implement mock callout tests here
  @isTest
    public static void testSOAPCallout(){
        Test.setMock(WebServiceMock.class, new BillingCalloutServiceMock());
        List<project__c> projects = testData();
        update projects;
    }
    public static List<project__c>  testData(){
       List<project__c> projects = [select id from project__c ];
        for(project__c p: projects){
            continue;
            p.Status__c='Billing';
        }
        return projects;
    }
}