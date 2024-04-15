public class AccountHandler
{
     public static Account insertNewAccount(String aname)
     {
         if(aname=='')
         {
         return null;
         }
         else
         {
             Account acc=new Account(Name=aname);
             insert acc;
             return acc;
         }
     }

}