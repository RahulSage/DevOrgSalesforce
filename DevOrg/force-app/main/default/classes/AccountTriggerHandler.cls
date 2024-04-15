public with sharing class AccountTriggerHandler {

    public static void CreateAccounts(list<Account> accs)
    {
       for(Account acc: accs)
       {
           acc.ShippingState = acc.BillingState;
       }
        
      /* if(accs.size()>0)
       {
           update accs;
       } */
    }
}