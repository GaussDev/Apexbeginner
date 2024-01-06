public with sharing class newLoops {
    
    public void printAllEvenNumbers(Integer n){

        for(Integer i = 0; i < n; i++){
            if(Math.mod(i, 2) == 0){
                System.debug('This is even number '+ i);
            } else {
            System.debug('This is odd number '+ i);
            }    
        }
    }

    public void printNToMInsesitive(Integer numberOne, Integer numberTwo){
        Integer minNumber = Math.min(numberOne, numberTwo);
        Integer maxNumber = Math.max(numberOne, numberTwo);

        for(Integer i = minNumber; i <= maxNumber; i++){
            System.debug('This is number in the range min to max ' + i);
        }   
    }

    public void printNToMInsesitiveBackwards(Integer numberOne, Integer numberTwo){
        Integer minNumber = Math.min(numberOne, numberTwo);
        Integer maxNumber = Math.max(numberOne, numberTwo);

        for(Integer i = maxNumber; i <= minNumber; i--){
            System.debug('This is number in the range max to min ' + i);
        }   
    }

    public Integer calculateFactorialNumber(Integer n){
        Integer sum = 1;

        for(Integer i = 1; i <= n; i++){
            sum *= i;
        }
        return sum;   
    }
    
    public Decimal multiplicationDividedByAddition(Integer n){
        Decimal factor = 0; //used for formula
        Integer sumB = 0; //used for getting summ of all number till n
        Integer sumA = 1; //used for getting factorial of n or product of all numbers till n

        for(Integer i=1; i <= n; i++){
            sumA *= i;
            for(Integer j=1; j <= n; j++){
                sumB += j;
            }
        }

        factor = (decimal)(sumA / sumB); //or I need to use here Decimal.valueOf(sumA/SumB) method?
        return factor;
    }
    
    public void printQuadrats(Integer x){

        for(Integer i=1; i <= x; i++){
            System.debug(i * i);
        }
    }

    public void printMultiplicationTable(Integer myNumber){
        for(Integer i=1; i <= myNumber; i++){
            System.debug(i * myNumber);
        }
    }
    
    public void printPositiveEvenNumbers(Integer n){
        if(n > 0 && Math.mod(n, 2) == 0){
            for(Integer i=n; i >= 0; i--){
                System.debug(i);
            }
        }
    }

//what is the difference if we first have condition than loop VS first loop and inside of it a condition?
//what is the best practice?

    public void printNegativeOddNumbers(Integer n){
        if(n < 0 && Math.mod(n, 2) != 0){
            for(Integer i=n; i < 0; i++){
                System.debug(i);
            }
        }
    }

    public void calculateRange(Integer numberA, Integer numberB){
        Integer minNumber = Math.min(numberA, numberB);
        Integer maxNumber = Math.max(numberA, numberB);
        Integer sum = 0;

        if((minNumber == null || maxNumber == null) && (minNumber == maxNumber)){
            System.debug('Result is 0');
        }else{
            for(Integer i = minNumber; i <= maxNumber; i++){
                sum += i;
            }
        }
    }

    public Boolean isPrime(Integer myNumber) {

// I = 2, Mod(5, 2) = false - > not prime
// i = 3, Mod(5, 3) = false
// i = 4, Mod(5, 4) = false

// i = 2, Mod(6, 2) = true - not prime
// 


        for(Integer i=2; i <= myNumber; i++){
            if(Math.mod(myNumber, i) == 0) {
                return false;
            }
            System.debug(i);
        }
        return true;
    }

    public Boolean isPrime_secondVersion(Integer n) {
        Integer primeFactor = 0;

        for(Integer i = 3; i <= n; i++){
            if(Math.mod(n, i) == 0){
                primeFactor++;
                if(primeFactor == 1){
                    System.debug(i);
                }
            }
        }  
        return true;
    }

}