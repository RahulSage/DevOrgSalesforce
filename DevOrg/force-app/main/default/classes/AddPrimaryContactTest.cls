@IsTest
public with sharing class AddPrimaryContactTest {
    @IsTest
    public static void AddPrimaryContactTestMethod() {
        Contact con = new Contact(LastName = 'Test Name');
        insert con;
        List<Account> accToInsert = new List<Account>();
        for(Integer i = 0;i<100;i++){
            Account acc = new Account(Name = 'Test'+i);
            if(i<50){
             acc.BillingState = 'NY';   
            } else {
             acc.BillingState = 'CA';     
            }
            accToInsert.add(acc); 
        }
        insert accToInsert;

        Test.startTest();
        System.enqueueJob(new AddPrimaryContact(con, 'CA'));
        Test.stopTest();
    }
}