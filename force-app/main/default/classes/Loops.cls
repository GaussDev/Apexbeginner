public with sharing class Loops {
    public void printAllEvenNumbers(Integer n) {
        
        if(math.mod(n, 2) == 0){
            system.debug('this is even: ' + n);
        }else{
            system.debug('this is odd: ' + n);
        }

    }

    // 10, 15
    // 15, 14, 13, 12, 11, 10
    public void printNToMInsesitive(Integer numberOne, Integer numberTwo){
        Integer smallestNumber = Math.min(numberOne, numberTwo);// Find the smaller number
        Integer largestNumber = Math.max(numberOne, numberTwo); // Find the larger number
        // Iterater from the larger to the smaller and print all numbers in between
        for(Integer i = largestNumber; i >= smallestNumber; i--) {
            System.debug(i);
        }
    }

    // ints = [1, 2, 3, 4, 5]
    // sum = 15
    /**
        Step 1: Create a variable to hold the sum (Integer)
        Step 2: Iterate through the list
            Iteration 1: sum = 0 + 1 = 1 -> sum = sum + currentElement
            Iteration 2: sum = 1 + 2 = 3
            Iteration 3: sum = 3 + 3 = 6
            Iteration 4: sum = 6 + 4 = 10
            Iteration 5: sum = 10 + 5 = 15
        Step 3: Return the sum
    
     */
   public Integer sumList(List<Integer> ints) {
        Integer sum = 0;

        for(Integer listElement : ints) {
            sum += listElement;
        }
       
       return sum;
   }

}