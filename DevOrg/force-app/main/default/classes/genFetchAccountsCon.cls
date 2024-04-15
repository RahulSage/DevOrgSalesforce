public class genFetchAccountsCon {

    @AuraEnabled
    public static list<Account> getAccount()
    {
        return [SELECT Name,Rating,Website,Industry,Phone FROM Account LIMIT 10];
        
    }
}