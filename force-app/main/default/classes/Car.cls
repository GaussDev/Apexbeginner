public class Car {
    public String motor;
    public Integer maximumSpeed;
    public Integer passengers;
    public String color;
    public Boolean motorIsOn; 
    public Date currentDate; 
    public Radio carRadio;
    
    public void printCarVlues(){
        String p1 = 'Motor is: ' + motor + '. ';
        String p2 = 'maximumSpeed is: ' + maximumSpeed + '. ';
        String p3 = 'passengers is: ' + passengers + '. ';
        String p4 = 'color is: ' + color + '. ';
        String p5 = 'motorIsOn is: ' + motorIsOn + '. ';
        String p6 = 'currentDate is: ' + currentDate + '. ';
        String p7 = 'carRadio is: ' + carRadio + '. ';

        String allParts = p1 + p2 + p3 + p4 + p5 + p6 + p7;

        System.debug(allParts);   
    } 
    
    public void addSpeed(Integer speedToAdd){
        this.maximumSpeed = this.maximumSpeed + speedToAdd;
    }  

    public void repaint(String newPaint){
        this.color = newPaint;
    } 

    public Car (String motor, Integer maximumSpeed, Integer passengers, String color){
        this.motor = motor;
        this.maximumSpeed = maximumSpeed;
        this.passengers = passengers;
        this.color = color;
    }

    public void increasePassengers(Integer numberOfPassengers){
        this.passengers = this.passengers + numberOfPassengers;
    }  
    
    public void decreasePassengers(Integer numberOfPassengers){
        this.passengers = this.passengers - numberOfPassengers;
    }
        
    public String carInfo(){
        return 'This car has a ' + this.motor + ' a maximum speed of '+ this.maximumSpeed + 'km/h '+
                    ', can carry '+ this.passengers +' passengers, and is painted '+ this.color;
    } 
     
    
    
}