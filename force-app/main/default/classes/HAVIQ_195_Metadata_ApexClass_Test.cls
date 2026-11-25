@IsTest
private class HAVIQ_195_Metadata_ApexClass_Test {

    @IsTest
    static void testApexClass() {

        String result =
            HAVIQ_195_Metadata_ApexClass.getMessage();

        System.assertEquals(
            'HAV-IQ 1.95 Apex Class Test Successful',
            result
        );
    }

    @IsTest
    static void testApexTrigger() {

        Account record = new Account();

        Test.startTest();
        insert record;
        Test.stopTest();

        Account savedRecord = [
            SELECT Name
            FROM Account
            WHERE Id = :record.Id
        ];

        System.assertEquals(
            'HAV-IQ 1.95 Trigger Test',
            savedRecord.Name
        );
    }
}