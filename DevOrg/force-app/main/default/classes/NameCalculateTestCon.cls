@isTest
Public class NameCalculateTestCon
{
   @isTest static void testIndian()
   {
    NameCalculateCon name = new NameCalculateCon();
    name.myname='Rahul';
    name.fatherName='Sage';
    
    name.indianName();
     System.assertEquals(name.result,'Rahul Sage');
    
    NameCalculateCon name1 = new NameCalculateCon();
    name1.myname='Rahul';
    name1.fatherName='Sage';
    
    name1.AmericanName();
     System.assertEquals(name1.result,'Sage Rahul');
    
   }
}