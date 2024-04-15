@isTest
public class TestCon{
    public STATIC TESTMETHOD void Test1(){
    FullNameCon var=new FullNameCon();
    var.fName='Yoyo';
    var.lName='Singh';
    var.doIndian();
    System.assertEquals(var.resName,'Yoyo Singh');
    var.doAmerican();
    System.assertEquals(var.resName, 'Singh,Yoyo');
    }
}