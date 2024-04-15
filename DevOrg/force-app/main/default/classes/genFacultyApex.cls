public class genFacultyApex {

     @auraENABLED
    public STATIC list<Faculty__c> fetchFaculty(String rating){
        return [select Id, Name, Rating__c, Level__c, Salary__c from Faculty__c where Rating__c =: rating Limit 500];
    }
}