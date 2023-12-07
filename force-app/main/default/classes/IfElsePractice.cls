public with sharing class IfElsePractice {

    public void printSign(Integer myNumber){
        if(myNumber > 0) {
            System.debug('positive');
        }else if(myNumber < 0){
            System.debug('negative');
        }else {
            System.debug('zero');  
        } 
        
    }

    public void hasNLength(String input, Integer n){
        if(input.length() == n){
            System.debug('valid');
        } else {
            System.debug('invalid');
        }

    }

    public Boolean hasExactLength(String input, Integer n){
        return input.length() == n;
    }

    public Integer maximumNumber(Integer number1, Integer number2){
        return Math.max(number1, number2);
    }

    public Integer maximumNumber(Integer number1, Integer number2, Integer number3){
        return Math.max(number1, Math.max(number2, number3));
    }

    public Decimal convertTemperature(Decimal temperature, String unit){
        if(unit == 'C'){
            return ((temperature * 9.0 / 5.0) + 32.0 );
        } else if(unit == 'F'){
            return ((temperature - 32.0) * 5.0 / 9.0);
        } 

        return 0;
    }
//new part of the homework to check with Igor:

    public Boolean isEven(Integer myNumber){
        return (Math.mod(myNumber, 2) == 1);  
    } 

    public String isDivisibleBy3or5(Integer numberToCheck){
        String result = 'not divisible';

        if(Math.mod(numberToCheck,3) == 0){
            result = 'divisible with 3';
        }else if(Math.mod(numberToCheck,5) == 0){
            result = 'divisible with 5';
        }else if((Math.mod(numberToCheck,5) == 0) && (Math.mod(numberToCheck,3) == 0)){
            result = 'divisible by both';
        }
    return result;

    }    

    public Boolean isLeapYear(Integer year){
        return ((Math.mod(year,4) == 0 || Math.mod(year,400) == 0) && Math.mod(year,100) != 0);
    }
    
}