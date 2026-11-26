import { LightningElement } from 'lwc';

export default class Haviq195MetadataLwc extends LightningElement {

    message = 'HAV-IQ 1.95 LWC created successfully.';

    handleClick() {
        this.message = 'LWC button clicked successfully.';
    }
}