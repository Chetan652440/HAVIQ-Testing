@isTest
private class HAVIQSampleTriggerTest {

    @isTest
    static void testMatchingAccount_getsDefaultDescription() {

        Account matching = new Account(
            Name = 'HAVIQ_TRIGGER_TEST_Alpha'
        );

        insert matching;

        Account reloaded = [
            SELECT Id, Description
            FROM Account
            WHERE Id = :matching.Id
        ];

        System.assertEquals(
            'Created by HAV-IQ sample trigger',
            reloaded.Description
        );
    }

    @isTest
    static void testOrdinaryAccount_descriptionNotModified() {

        Account ordinary = new Account(
            Name = 'Acme Corp'
        );

        insert ordinary;

        Account reloaded = [
            SELECT Id, Description
            FROM Account
            WHERE Id = :ordinary.Id
        ];

        System.assertEquals(
            null,
            reloaded.Description
        );
    }
}