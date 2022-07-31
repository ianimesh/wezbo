public with sharing class CTLocationStatusUpdateBatch implements Database.Batchable<SObject>{
    
    public Database.QueryLocator start(Database.BatchableContext bc)
    {
        List<String> StatusRec=new List<String>{'Red','Orange','Yellow'};
        Date today=Date.today();
        Date fourteenDaysAgo=today-14;
        return Database.getQueryLocator('SELECT Id ,Status__c FROM Location__c WHERE Status_Update_Date__c =:fourteenDaysAgo AND Status__c IN :StatusRec');
    }

    public void execute(Database.BatchableContext bc ,List<Location__c> scope)
    {
        for(Location__c l :scope)
        {
            l.Status__c = 'Green';
        }
        update scope;
    }
    public void finish(Database.BatchableContext bc)
    {
        //System.debug('Batch id completed');
    }
}
