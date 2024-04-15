public class StringArrayTest
{
      public static String[] test = new List<String>();  

   public static List<String> generateStringArray(Integer n)
   {
       for(Integer i=0;i<n;i++)
       {
         test.add('Test '+i);
       }
       return test;
   }

}