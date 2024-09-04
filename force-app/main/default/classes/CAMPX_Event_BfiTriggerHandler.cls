public with sharing class CAMPX_Event_BfiTriggerHandler {
    public CAMPX_Event_BfiTriggerHandler() {
    
    }

public static void BeforeInserUpdateStatusToPlanning( List<CAMPX__Event__c> newRecords){

    for( CAMPX__Event__c record : newRecords)
    {

        record.CAMPX__Status__c = 'Planning';
    }

    

}

}