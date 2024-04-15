public with sharing class AccountUtils {

    public static List<Account> accountsByState(String State)
    {
        List<Account> Accs = new List<Account>([SELECT Id, Name FROM Account where BillingState =: State]);
        
        return Accs;
    }
}