public class FetchAccount {
	@AuraEnabled
    public static list<Account> getAccount()
    {
        return [SELECT Id,Name,Rating,Website FROM Account];
        
    }
    
    }