@IsTest
public with sharing class DailyLeadProcessorTest {

    public static String CRON_EXP = '20 30 8 10 2 ?';
    @IsTest    
    public static void DailyLeadProcessorTestMethod() {
        List<Lead> leadListToInsert = new List<Lead>();
        for(Integer i = 0;i<200;i++){
            Lead ld = new Lead(LastName = 'LeadTest'+i,Company = 'Test');
            leadListToInsert.add(ld);
        }
        insert leadListToInsert;
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP,
            new DailyLeadProcessor());
        Test.stopTest();    
    }
}