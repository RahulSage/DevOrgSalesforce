public class LeadProcessor implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
        String queryString = 'SELECT ID,LeadSource from Lead';
        return database.getQueryLocator(queryString);
    }
    public void execute(Database.BatchableContext bc, List<Lead> records){
        // process each batch of records
        for(lead ld :records){
            ld.LeadSource = 'Dreamforce';
        }
        update records;
    }
    public void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }
}