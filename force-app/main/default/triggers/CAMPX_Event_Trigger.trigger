trigger CAMPX_Event_Trigger on CAMPX__Event__c (before insert) {

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            CAMPX_Event_BfiTriggerHandler.BeforeInserUpdateStatusToPlanning(Trigger.new);
        }



}
}