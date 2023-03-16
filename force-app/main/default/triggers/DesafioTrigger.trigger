trigger DesafioTrigger on Account(before insert, before update, after insert) {
    if(Trigger.isBefore) {
        AccountTriggerHandler.validate(Trigger.new);
    }

    if(Trigger.isInsert && Trigger.isAfter) {
        AccountTriggerHandler.builder(Trigger.new);
    }
}