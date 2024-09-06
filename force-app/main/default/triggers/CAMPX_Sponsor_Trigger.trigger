trigger CAMPX_Sponsor_Trigger on CAMPX__Sponsor__c (before insert, before update) {


    switch on Trigger.operationType {
        when BEFORE_INSERT {
            CAMPX_Sponsor_TriggerHandler.updateSponsorStatusToPendingBeforeUpdate(Trigger.new);
            CAMPX_Sponsor_TriggerHandler.updateTierBasedOnContributionBeforeInsert(Trigger.new);


            
        }
        when BEFORE_UPDATE{
            CAMPX_Sponsor_TriggerHandler.updateSponsorStatusToPendingBeforeUpdate(Trigger.new);
        }
        
        

      
    }

}