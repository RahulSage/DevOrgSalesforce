Public Class MultiplyCon
{
   public Integer num1 {get;set;}
   public Integer num2 {get;set;}  
   public Integer result {get;set;}
   
   public void doMultiply()
   {
   SFDCMultiply.ShahMultiplyService  Stub = new SFDCMultiply.ShahMultiplyService();
      result=Stub.doMultiply(num1,num2) ;
   }
}