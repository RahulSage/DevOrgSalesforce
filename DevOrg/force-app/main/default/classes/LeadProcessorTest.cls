@IsTest
public class LeadProcessorTest {
	@IsTest
    public static void testLeadProcessorBatch(){
        list<Lead> leadListToInsert = new List<Lead>();
        for(integer i=0 ; i<200;i++){
            Lead ld = new Lead(LastName = 'LeadTest'+i,Company = 'Test');
            leadListToInsert.add(ld);
        }
        insert leadListToInsert; 
        
        test.startTest();
        database.executeBatch(new LeadProcessor());
        test.stopTest();
    }
}