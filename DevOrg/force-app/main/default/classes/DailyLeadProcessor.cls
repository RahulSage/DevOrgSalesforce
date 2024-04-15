public with sharing class DailyLeadProcessor implements Schedulable{
    public void execute(SchedulableContext ctx) {
       List<Lead> leadListToUpdate = [SELECT ID,leadSource from Lead where leadSource = null limit 200]; 
       for(Lead ld : leadListToUpdate){
           ld.leadSource = 'Dreamforce';
       }
       update leadListToUpdate;
    }
}