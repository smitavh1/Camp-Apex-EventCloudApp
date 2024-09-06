public with sharing class CAMPX_Sponsor_TriggerHandler {

        public CAMPX_Sponsor_TriggerHandler() {

    }

    public static void updateTierBasedOnContributionBeforeInsert(List<CAMPX__Sponsor__c> newRecords){

        for(CAMPX__Sponsor__c record : newRecords){
            if(record.CAMPX__ContributionAmount__c == null || record.CAMPX__ContributionAmount__c <= 0){
                record.CAMPX__Tier__c = '';
            }
            else if( record.CAMPX__ContributionAmount__c < 1000){
                record.CAMPX__Tier__c = 'Bronze';
            }
            else if(record.CAMPX__ContributionAmount__c < 5000){
                record.CAMPX__Tier__c = 'Silver';
            }
            else if( record.CAMPX__ContributionAmount__c >= 5000){
                record.CAMPX__Tier__c = 'Gold';
            }
        }
    }

    public static void updateSponsorStatusToPendingBeforeUpdate(List<CAMPX__Sponsor__c> newRecords)
    {
        for( CAMPX__Sponsor__c record : newRecords){

            if(String.isBlank(record.CAMPX__Email__c)){
                record.addError('A sponsor can not be created without an email address', false);
            }

            if(String.isBlank(record.CAMPX__Status__c )){
                record.CAMPX__Status__c = 'Pending';
            }

            if(String.isBlank(record.CAMPX__Event__c) && record.CAMPX__Status__c == 'Accepted'){
                record.addError('A Sponsor must be associated with an event before being Accepted.', false);

            }

                  }

    }
}