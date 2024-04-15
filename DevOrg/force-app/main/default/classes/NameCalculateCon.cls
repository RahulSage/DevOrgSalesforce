public class NameCalculateCon
{
    public String myName {get;set;}
    public String fatherName {get;set;}
    public String result {get;set;}
    
    public void indianName()
    {
     
    System.debug('Start of method Indian Name');
     result = myName + ' '+ fatherName ;
    
    }
    
    public void americanName()
    {
    
   
    System.debug('Start of method american Name');
     result = fatherName + ' '+ myName ;
    
    }
}