trigger CTLocationTrigger on Location__c (before insert,after insert,before update,after update) {
    switch on Trigger.OperationType{
        when BEFORE_INSERT{
            CTLocationTriggerHandler.beforeInsert(trigger.new);
        }
        when BEFORE_UPDATE{
            CTLocationTriggerHandler.beforeUpdate(trigger.new,trigger.oldMap);
        }
        when AFTER_UPDATE{
            CTLocationTriggerHandler.afterUpdate(trigger.new,trigger.oldMap);
        }
    }

}