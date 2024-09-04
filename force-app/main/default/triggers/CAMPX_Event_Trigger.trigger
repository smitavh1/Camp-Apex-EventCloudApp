trigger CAMPX_Event_Trigger on CAMPX__Event__c (before insert, before update) {

    switch on Trigger.operationType {
        when BEFORE_INSERT {
            CAMPX_Event_BfiTriggerHandler.BeforeInserUpdateStatusToPlanning(Trigger.new);


        }
    }
        switch on Trigger.operationType {
            when BEFORE_UPDATE {
                CAMPX_Event_BfiTriggerHandler.beforeStatusUpdateCaptureDateTime(Trigger.new, Trigger.oldMap);
            }



}
}