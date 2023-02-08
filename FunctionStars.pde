star[] stars = new star[3000]; //количество объектов
void drawStars(){
  background(20);
  translate(width/2, height/2);
  for(int i = 0; i < stars.length; i++ ){
    stars[i].update();
    stars[i].show();
  }
}
