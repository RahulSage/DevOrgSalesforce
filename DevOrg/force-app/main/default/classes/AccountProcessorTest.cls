@isTest
public class AccountProcessorTest {
    @istest
    public static void testCountContacts(){
        Account acc = new Account(Name = 'Test');
        insert acc;
        Contact con = new Contact (lastName = 'Test',accountid = acc.id);
        insert con;
        List<id> accountIdList = new List<Id>();
        accountIdList.add(acc.Id);
        Test.startTest();
        AccountProcessor.countContacts(accountIdList);
        test.stopTest();
    }
    @istest
    public static void testCountContactsZero(){
        Account acc = new Account(Name = 'Test');
        insert acc;
        
        List<id> accountIdList = new List<Id>();
        accountIdList.add(acc.Id);
        Test.startTest();
        AccountProcessor.countContacts(accountIdList);
        test.stopTest();
    }
}