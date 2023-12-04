public with sharing class MapsService {


    public Map<String, Integer> mergeMaps(Map<String, Integer> map1, Map<String, Integer> map2) {
        map1.putAll(map2);
        return map1;
    }


    /**
        Input: a, b, a, c, a, b
        Output: a => 3, b => 2, c => 1 
        mapWords.put('ABC', 1);
        mapWords.put('BCD', 2);
        mapWords.put('CDE', 3);
        
    public Map<String, Integer> countWords(List<String> words) {
        Map<String, Integer> mapWords = new Map<String, Integer>();

        for(Map mapWord: mapWords) {
            Integer countWords = countWords.countMatches(mapWords);


        }


        return mapWords;
    }*/

    /**
    
    A => 0
    B => 5
    C => 3
    D => 4

    .get('A') -> 0

    Input number: 4
    Output: B => 5, D => 4
    
    */
    public Map<String, Integer> filterByValue(Map<String, Integer> inputMap, Integer treshold){
        Map<String, Integer> mapToReturn = new Map<String, Integer>();

        for(String key : inputMap.keySet()) {
            Integer value = inputMap.get(key);

            if(value >= treshold) {
                mapToReturn.put(key, value);
            }
        }

        return mapToReturn;
    }

/**
    Input:
    A => aaa
    B => bbb
    C => ccc
    ...
    Z => zzz

    List<String> A, D, C
    List (aaa, ccc)

 */
    public List<String> getValuesByKey(Map<String, String> inputMap, List<String> keys){
        List<String> listToReturn = new List<String>();

        //String key ide kroz keys listu, u prvoj iteraciji key = prvi element iy keys liste
        //potom pita da li mapa inputMap sadrzi key varijablu tj da li sadrzi prvi element
        //ako sadrzi, doda ga  listu
        
        for(String key : keys){
            if(inputMap.containsKey(key)){ 
                String value = inputMap.get(key);

                listToReturn.add(value);
            }
        }

        return listToReturn;
    } 

    public Map<String, Integer> countWords(List<String> words){
        


    }   




    

}