import { LightningElement, track } from 'lwc';
    export default class HelloWorld extends LightningElement {
        @track greeting = 'Sage';
        @track textBoxValue = '';
        changeHandler(event) {
            //this.greeting = event.target.value;
            this.textBoxValue = event.target.value;
        }
        handleClick(event) {
            this.greeting = this.textBoxValue;
        }
    }