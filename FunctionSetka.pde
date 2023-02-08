
int radForSetka = 200;
int amountForSetka = 60; //количество объектов
float xForSetka[] = new float[amountForSetka];
float yForSetka[] = new float[amountForSetka];
float velXForSetka[] = new float[amountForSetka];
float velYForSetka[] = new float[amountForSetka];
float RForSetka[] = new float[amountForSetka];
void drawSetka(){
    background(20);
    if (get_animation() != 1){
      return;
    }
  //rotateX(radians(60));
  //translate(0, -250, -200); //раскомментить если хочешь наклонить экран(3д)

  for (int i = 0; i < amountForSetka; i++) {
    xForSetka[i] += velXForSetka[i];
    yForSetka[i] += velYForSetka[i];
    if (xForSetka[i] < RForSetka[i] || xForSetka[i] > width-RForSetka[i]) velXForSetka[i] = -velXForSetka[i];
    if (yForSetka[i] < RForSetka[i] || yForSetka[i] > height-RForSetka[i]) velYForSetka[i] = -velYForSetka[i];
  }
  for (int i = 0; i < amountForSetka; i++) {
    for (int j = 0; j < i; j++) {
      float distanceForSetka = dist(xForSetka[i], yForSetka[i], xForSetka[j], yForSetka[j]);
      if (distanceForSetka < radForSetka) {
        strokeWeight(map(distanceForSetka, 0, radForSetka, 4, 0.2));
        stroke(random(150, 255), 0, random(100, 255)); //цвет линий
        line(xForSetka[i], yForSetka[i], xForSetka[j], yForSetka[j]);
      }
    }
  }
  for (int i = 0; i < amountForSetka; i++) {   
    noStroke();
    fill(20);
    circle(xForSetka[i], yForSetka[i], RForSetka[i]*2);
  }
}
