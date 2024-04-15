public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountIds){
     Map<Id,list<Contact>> accIdVsContacts = new Map<Id,list<Contact>>();   
     List<Account> accountsToUpdate = new List<Account>();   
     List<Contact> allRelatedContacts = [SELECT ID,ACCOUNTID FROM CONTACT WHERE ACCOUNTID IN: accountIds];   
        for(contact con : allRelatedContacts){
            if(accIdVsContacts.get(con.ACCOUNTID) == NULL){
             accIdVsContacts.put(con.ACCOUNTID,new List<Contact>());   
            }
            accIdVsContacts.get(con.ACCOUNTID).add(con);
        }
        for(Id accId : accountIds){
          Account acc = new Account(Id = accId);
            if(accIdVsContacts.get(accId) == NULL){
              acc.Number_Of_Contacts__c = 0;  
            } else {
              acc.Number_Of_Contacts__c = accIdVsContacts.get(accId).size();  
            }  
           accountsToUpdate.add(acc); 
        }
        if(accountsToUpdate.size()>0){
          update accountsToUpdate;  
        }   
    }
}