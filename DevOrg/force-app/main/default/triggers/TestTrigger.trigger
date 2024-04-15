trigger TestTrigger on Test_Trigger__c (before update) {
    for(Test_Trigger__c temp : Trigger.new)
    {
    temp.Count__c+=1;
}
}