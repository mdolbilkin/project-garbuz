int LowestRadiusForCircles;
int RadiusForCircles = 10;
int CurrentRadiusForCircles = 10;
void DrawCircles() {
    colorMode(RGB);
    background(20);
    strokeWeight(4);
    fill(20);
    while(RadiusForCircles>5){
      stroke(CurrentRadiusForCircles%255, 0, RadiusForCircles%255);
      circle(width/2, height/2, RadiusForCircles);
      RadiusForCircles-=50;
      
    }
    delay(100); //зодержка появления в мс
    CurrentRadiusForCircles+=50;
    RadiusForCircles = CurrentRadiusForCircles;    
}
