public with sharing class Rectangle {
    public Integer width;
    public Integer lenght;

    public Integer area () {
        Integer rectanglearea = this.width * this.lenght;
        return rectanglearea;
    }

    public Integer perimeter () {
        Integer rectangleperimeter = (this.width + this.lenght) * 2;
        return rectangleperimeter;
    }

    public void resize (Integer newWidth, Integer newLength){
        this.width = newWidth;
        this.lenght = newLength;
          
    }

}