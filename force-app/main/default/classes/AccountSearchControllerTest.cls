
@isTest
public with sharing class AccountSearchControllerTest {
    @testSetup
    public static void creteTestData(){
        
    }
    @isTest 
    public static void testMethod1(){
        String response = '';
        Test.setMock(HttpCalloutMock.class, new AccountSearchControllerMockCallout(true,true));
        Test.StartTest();
        response = AccountSearchController.getpostSAML('Test');
        Test.StopTest();
        System.assertEquals(response,'{"success":true,"message":"","result":56293}');
    }
    @isTest 
    public static void testMethod2(){
        String response = '';
        Test.setMock(HttpCalloutMock.class, new AccountSearchControllerMockCallout(true,false));
        Test.StartTest();
        response = AccountSearchController.getpostSAML('Test');
        Test.StopTest();
       
        System.assertEquals(response,'Error Sir!!');
    }
    @isTest 
    public static void testMethod3(){
        String response = '';
        Test.setMock(HttpCalloutMock.class, new AccountSearchControllerMockCallout(false,true));
        Test.StartTest();
        response = AccountSearchController.getpostSAML('Test');
        Test.StopTest();
        System.assertEquals(response,'Authorization issue');
    }
    @isTest 
    public static void testMethod4(){
        String response = '';
        Test.setMock(HttpCalloutMock.class, new AccountSearchControllerMockCallout(false,true));
        Test.StartTest();
        response = AccountSearchController.getpostSAML('Test');
        Test.StopTest();
        System.assertEquals(response,'Authorization issue');
    }
}
