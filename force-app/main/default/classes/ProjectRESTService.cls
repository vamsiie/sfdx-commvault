@RestResource(urlMapping='/project/*')
global with sharing class ProjectRESTService {
    //Implement service logic here
    @HttpPost
    global static string postProjectData(String ProjectRef, String  ProjectName, String OpportunityId, Date StartDate, Date EndDate, Decimal Amount, String  Status){
        string returnvalue='OK';
        Savepoint sp = Database.setSavepoint();
        try{ 
        Project__c project = new Project__c(Name =ProjectName,ProjectRef__c = ProjectRef,Opportunity__c=OpportunityId, 
                                                                Start_Date__c =StartDate, End_Date__c = EndDate, Billable_Amount__c = Amount,Status__c = status );
        upsert project ProjectRef__c;
        Opportunity opp = [select id, DeliveryInstallationStatus__c from Opportunity where id = :OpportunityId];
        opp.DeliveryInstallationStatus__c ='In Progress';
        update opp;
        }
        catch(exception e){
            Database.rollback(sp);
            returnvalue = e.getMessage();
        }
        
        return returnvalue;
    }
}