trigger brokerTrigger on Broker__c (before insert,after insert) {

    system.debug('Just a debug statement');
}