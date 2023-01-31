    trigger DesafioTrigger on Account (before insert, before update){

        if(Trigger.isInsert || Trigger.isUpdate){
        DesafioTriggerHandler.validar(trigger.new);
        }

}      