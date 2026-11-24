trigger HAVIQSampleTrigger on Account (before insert) {

    for (Account acc : Trigger.new) {

        if (
            acc.Name != null &&
            acc.Name.startsWith('HAVIQ_TRIGGER_TEST_') &&
            String.isBlank(acc.Description)
        ) {
            acc.Description = 'Created by HAV-IQ sample trigger version-1.93';
        }
    }
}