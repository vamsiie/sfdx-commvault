import { LightningElement, wire, track } from 'lwc';
import getpostSAML from '@salesforce/apex/AccountSearchController.getpostSAML';
const columns = [
    {label: 'Account Name', fieldName: 'AccountName',type:"text"},
    {label: 'Billing Country', fieldName: 'BillingCountry', type:"text"},
    {label: 'No Of Contacts', fieldName: 'NoOfContacts',type:"number"},
    {label: 'No Of Opportunities', fieldName: 'NoOfOpportunities',type:"number"}
];
export default class AccountSearch extends LightningElement {
    @track data;
    @track error;
    @track data1;
    @track serachName;
    async handleLoad(event){
        var inp=this.template.querySelector("lightning-input");
        this.serachName = inp.value;
        console.log('Entered Account Name +'+ this.serachName );
        getpostSAML({accountName:this.serachName})
            .then(
                result => {
                    let accountData = [];
                    let jsonStringified = JSON.parse(result);
                    console.log(JSON.stringify(result));
                    console.log('jsonStringified +'+ jsonStringified.records);
                    console.log('jsonStringified 2+'+ jsonStringified);
                    for(var i=0;i<jsonStringified.records.length;i++){
                        console.log('jsonStringified.records.length '+ jsonStringified.records[i].Id);
                        console.log('jsonStringified.records.length '+ jsonStringified.records[i].Name);
                        
                        
                        console.log('jsonStringified.records.length '+ jsonStringified.records[i].BillingCountry);
                        console.log('jsonStringified.records.length '+ jsonStringified.records.length);
                        var oppLength =0,conLength=0;
                        if(jsonStringified.records[i].Contacts){
                            conLength = jsonStringified.records[i].Contacts.totalSize
                            console.log('jsonStringified.records.length '+ jsonStringified.records[i].Contacts.totalSize);
                        }
                        if(jsonStringified.records[i].Opportunities){
                            oppLength = jsonStringified.records[i].Opportunities.totalSize;
                            console.log('jsonStringified.records.opp '+jsonStringified.records[i].Opportunities.totalSize);
                        }
                        accountData.push({
                            id: jsonStringified.records[i].Id,
                            AccountName: jsonStringified.records[i].Name,
                            BillingCountry: jsonStringified.records[i].BillingCountry,
                            NoOfContacts: conLength,
                            NoOfOpportunities:  oppLength
                        });
                    }
                    this.columns=columns;
                    this.data = accountData;
                    console.log('accountData++ +'+ JSON.stringify(accountData));
                })
            .catch(
                error => {
                    this.error = error;
                    console.log('error'+JSON.stringify(this.returnValue));
                }
            )

    }

}