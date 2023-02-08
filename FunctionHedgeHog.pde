float tForHedgeHog = 0;
float rForHedgeHog(float theta, float a, float b, float m, float n1, float n2, float n3 ){
  return pow(pow(abs(cos(m * theta / 4.0) / a), n2) + 
  pow(abs(sin(m * theta / 4.0) / b), n3), -1.0 / n1);
}
void drawHedgehog(){ //типа нарисовать ежа
  stroke(200,120,150);
  strokeWeight(2);
  colorMode(RGB);
  background(0);
  translate(width / 2, height / 2);
  beginShape();
  for (float theta = 0; theta <= 2 * PI; theta += 0.01){
    float rad = rForHedgeHog(theta, 2, 2, 170, 1, sin(tForHedgeHog), cos(tForHedgeHog));
    float x = rad * cos(theta) * 150;
    float y = rad * sin(theta) * 150;
    vertex(x,y);
  }
  endShape();
  tForHedgeHog += 0.05;
}
