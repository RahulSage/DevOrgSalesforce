public class fullNameCont
{
    public String fName {get;set;}
    public String lName {get;set;}
    public String result {get;set;}
    public Boolean check=false;
    public void indianName()
    {
     IF(fName != '' && lName != '')
     {
    System.debug('Start of method Indian Name');
     result = fName + ' '+ lName ;
    }
    ELSE
    {
    Apexpages.addMessage(new ApexPages.message(Apexpages.Severity.Error, 'Error'));
    check=true;
    }
    
    }
    
    public void americanName()
    {
    
   
    IF(fName != '' && lName != '')
     {
    System.debug('Start of method Indian Name');
     result = lName + ' '+ fName ;
    }
    
    ELSE
    {
    Apexpages.addMessage(new ApexPages.message(Apexpages.Severity.Error, 'Error'));
    check=true;
    }
 
    
    }
}