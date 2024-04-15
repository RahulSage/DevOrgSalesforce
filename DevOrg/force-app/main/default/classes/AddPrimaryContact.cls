public with sharing class AddPrimaryContact implements Queueable {
    Contact contactToClone ;
    String stateAbbr ;
    public AddPrimaryContact(Contact conCont, String state) {
        this.contactToClone = conCont ;
        this.stateAbbr = state ;
    }
    public void execute(QueueableContext context) {
        List<Contact> contactListToInsert = new List<Contact>();
        for(Account acc : [SELECT ID FROM Account where BillingState = : stateAbbr Limit 200]){
            contact con = contactToClone.clone();
            con.AccountId = acc.Id;

            contactListToInsert.add(con);
        }
        insert contactListToInsert;
    }
}