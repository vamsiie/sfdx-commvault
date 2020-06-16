public  class BillingCalloutService  {
    //Implement business and callout logic methods here
    @future(callout=true)
    public static void callBillingService(List<string> projectids){
            System.debug('Entered into the class');
            ServiceCredentials__c cred = ServiceCredentials__c.getValues('BillingServiceCredential');
            List<Project__C> projects = [SELECT id,projectRef__c, Billable_Amount__c from Project__C where id = :projectids];
           for(Project__c p : projects){
               BillingServiceProxy.project project = new BillingServiceProxy.project();
               project.projectRef = p.ProjectRef__c;
               project.billAmount =p.Billable_Amount__c;
               project.username = cred.Username__c;
               project.password = cred.Password__c;
           
               BillingServiceProxy.InvoicesPortSoap11 billing = new BillingServiceProxy.InvoicesPortSoap11();
               billing.billProject(project );
               p.Status__c = 'Billed';
               //update  p;
               System.debug('vamsi krishnaa');
           } 
        update projects;
    }
}