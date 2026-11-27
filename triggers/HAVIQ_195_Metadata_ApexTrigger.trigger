trigger HAVIQ_195_Metadata_ApexTrigger on Account (before insert) {

    for (Account record : Trigger.new) {
        if (String.isBlank(record.Name)) {
            record.Name = 'HAV-IQ 1.95 Trigger Test';
        }
    }
}