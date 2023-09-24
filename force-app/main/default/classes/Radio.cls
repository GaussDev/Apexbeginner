public class Radio {
    public Decimal frequency;
    public String radioType;
    public Boolean isOn;

    

    public Radio() {
        this.frequency = 100.50;
        this.radioType = 'XFM';
        this.isOn = true;
    }

    public Radio(String radioType){
        this.frequency = 222.50;
        this.isOn = true;
        this.radioType = radioType;
    }

    public Decimal nextChannel (){
        this.frequency = this.frequency + 10;
        return frequency;
    }
}