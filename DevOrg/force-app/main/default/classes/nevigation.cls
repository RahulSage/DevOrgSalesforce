public with sharing class nevigation {

    public String AccountName {get;set;}
    
    public pageReference goToPage2()
    {
        
        pageReference ref  = new pageReference('/apex/Page2?accName=' + AccountName);
        ref.setRedirect(TRUE);
        RETURN ref;
    }
}