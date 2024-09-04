public with sharing class CAMPX_Sponsor_TriggerHandler {

        public CAMPX_Sponsor_TriggerHandler() {

    }

    public static void updateSponsorStatusToPendingBeforeUpdate(List<CAMPX__Sponsor__c> newRecords)
    {
        for( CAMPX__Sponsor__c record : newRecords){

            if(String.isBlank(record.CAMPX__Status__c )){
                record.CAMPX__Status__c = 'Pending';
            }

                  }

    }
}