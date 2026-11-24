@isTest
private class HAVIQSampleApexTest {
    @isTest
    static void testGetStatus_returnsExpectedString() {
        String result = HAVIQSampleApex.getStatus();
        System.assertEquals('HAV-IQ Apex class deployment test successful testing', result);
    }
}