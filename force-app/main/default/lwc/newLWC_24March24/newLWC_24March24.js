import { LightningElement } from 'lwc';

export default class NewLWC_24March24 extends LightningElement {
    
    greeting = 'Great going learning Code Builder!';
    changeHandler(event) {
        this.greeting = event.target.value;

    }
}