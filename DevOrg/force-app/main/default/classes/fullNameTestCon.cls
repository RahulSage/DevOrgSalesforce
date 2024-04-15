@isTest
Public class fullNameTestCon
{
   @isTest static void test()
   {
    fullNameCont name = new fullNameCont();
    name.fname='Rahul';
    name.lName='Sage';
    
    name.indianName();
     System.assertEquals(name.result,'Rahul Sage');
    
       
    name.americanName();
     System.assertEquals(name.result,'Sage Rahul');
     
     name.fName='';
     name.lName='';
     name.indianName();
     System.assertEquals(name.check,true);
     
     name.americanName();
     System.assertEquals(name.check,true);
     
     
    
   }
}