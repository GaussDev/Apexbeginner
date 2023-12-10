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



}