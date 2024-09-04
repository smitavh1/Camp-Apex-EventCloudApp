public with sharing class CAMPX_Event_BfiTriggerHandler {

    public CAMPX_Event_BfiTriggerHandler() {
    
    }

public static void BeforeInserUpdateStatusToPlanning( List<CAMPX__Event__c> newRecords){

    for( CAMPX__Event__c record : newRecords)
    {

        record.CAMPX__Status__c = 'Planning';
        record.CAMPX__StatusChangeDate__c = Datetime.now();

    }

    

}

public static void beforeStatusUpdateCaptureDateTime(List<CAMPX__Event__c> editedRecords,Map<Id,CAMPX__Event__c> OldversionOfRecords){
    
     


    for(CAMPX__Event__c record : editedRecords){

        if(record.CAMPX__Status__c != OldversionOfRecords.get(record.Id).CAMPX__Status__c){

            record.CAMPX__StatusChangeDate__c = Datetime.now();

        }

        }
}

}