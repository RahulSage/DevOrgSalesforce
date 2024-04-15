public class UpdateActiveAccountCount {
    public static void updateActiveCount(set<id> accountIds){
        list<Account> accounts = [select id,active_contacts__c,(select id from contacts where active__c = true) from Account where id in: accountIds];
        
        for(Account acc : accounts){
            acc.active_contacts__c = acc.contacts.size();
        }
        update accounts;
    } 
}