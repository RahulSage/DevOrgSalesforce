public class ContactTriggerHandler {

    public static void beforeInsert(List<Contact> newContacts){
       return; 
    }
    public static void afterInsert(List<Contact> newContacts){
      //countActiveContact(newContacts);  
        set<Id> accountIds = new Set<Id>();
        for(contact con : newContacts){
            if(con.active__c == true){
              accountIds.add(con.accountId);  
            } 
        }
        
        UpdateActiveAccountCount.updateActiveCount(accountIds);
    }
    public static void beforeUpdate(List<Contact> newContacts,Map<id,contact> oldMap){
      return;  
    }
    public static void afterUpdate(List<Contact> newContacts,Map<id,contact> oldMap){
     //countActiveContact(newContacts,oldMap);  
     set<Id> accountIds = new Set<Id>();
        for(contact con : newContacts){
            contact oldCon = oldMap.get(con.Id);
            if(con.active__c != oldCon.Active__c){
              accountIds.add(con.accountId);  
            } 
        }
        
        UpdateActiveAccountCount.updateActiveCount(accountIds);
    }
    public static void beforeDelete(Map<id,contact> oldMap){
      return;  
    }
    public static void afterDelete(Map<id,contact> oldMap){
     //countActiveContact(oldMap);    
     set<Id> accountIds = new Set<Id>();
        for(contact con : oldMap.values()){
            if(con.active__c == true){
              accountIds.add(con.accountId);  
            } 
        }
        
        UpdateActiveAccountCount.updateActiveCount(accountIds);
    }
    public static void afterUnDelete(List<Contact> newContacts){
     //countActiveContact(newContacts);    
     //countActiveContact(newContacts);  
        set<Id> accountIds = new Set<Id>();
        for(contact con : newContacts){
            if(con.active__c == true){
              accountIds.add(con.accountId);  
            } 
        }
        
        UpdateActiveAccountCount.updateActiveCount(accountIds);
    }
    
    private static void countActiveContact(List<Contact> newContacts){
        
    }
    private static void countActiveContact(List<Contact> newContacts,Map<id,contact> oldMap){
        
    }
    private static void countActiveContact(map<id,contact> oldMap){
        
    }

}