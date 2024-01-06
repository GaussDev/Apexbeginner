public with sharing class ForEach {
    
    public Integer sumList(List<Integer> aBcs){
        Integer sum = 0;

        for(Integer newElement: aBcs){
            sum += newElement;
        }
        return sum;
    }

    public Integer getSmallest(List<Integer> aLists){
        aLists.sort();
        return aLists.get(0);
    }

    public List<Integer> createNIntegers(Integer n) {
        List<Integer> numbers = new List<Integer>();

        for(Integer i = 0; i < n; i++) {
            numbers.add(i);
        }
        return numbers;
    }

}