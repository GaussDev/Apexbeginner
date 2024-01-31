public with sharing class StringListsPractice {

    public String concatenateList(List<String> abC){
        String conString = '';

        for(Integer i=0; i < abC.size(); i++){
            conString = abc.get(i);
        }
        return conString;
    }

    public List<String> reverseWordsAndOrder(List<String> aBc){

        String reversedWord = '';

        List<String> reverseWords = new List<String>();
        List<String> reverseOrderOfWords = new List<String>();

        for(Integer i = aBc.size()-1; i >=0; i--){
            reverseOrderOfWords.add(aBc.get(i));
        }

        for(String word : reverseOrderOfWords){
            reverseWords.add(word.reverse());
        }

        return reverseWords;

    }

//HW 06Jan24
}