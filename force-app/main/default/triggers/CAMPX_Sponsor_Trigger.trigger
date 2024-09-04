trigger CAMPX_Sponsor_Trigger on CAMPX__Sponsor__c (before insert) {


    switch on Trigger.operationType {
        when BEFORE_INSERT {
            CAMPX_Sponsor_TriggerHandler.updateSponsorStatusToPendingBeforeUpdate(Trigger.new);


            
        }
      
    }

}