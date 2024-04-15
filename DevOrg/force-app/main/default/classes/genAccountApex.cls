public class genAccountApex {

    @auraENABLED
    public STATIC list<Account> fetchAccountFromGenAccount(){
        //System.debug('In server');
        return [select Id, Name, Rating, Website, Industry, Type from Account LIMIT 500];
    }
    @auraENABLED
    public STATIC list<Account> fetchAccount(String rating){
        return [select Id, Name, Rating, Website, Industry, Type from Account where Rating =: rating Limit 500];
    }
}