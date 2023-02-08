float tForLines;
float x1(float t) {
    return sin(-t / 10) * 200 + sin(t / 5) * 40;
}
float y1(float t) {
    return cos(-t / 10) * 150 + sin(t / 5) * 100;
}
float x2(float t) {
    return sin(t / 10) * 400 + sin(t) * 2 + cos(t) * 20;
}
float y2(float t) {
    return -cos(t / 20) * 300 + cos(t / 12) * 40;
}


float x21(float t) {
    return sin(t / 10) * 200 + sin(t / 5) * 20;
}
float y21(float t) {
    return -cos(t / 10) * 150 + sin(t / 5) * 100;
}
float x22(float t) {
    return sin(t / 10) * 400 + sin(t) * 2 + cos(t) * 20;
}
float y22(float t) {
    return -cos(t / 20) * 300 + cos(t / 12) * 40;
}
void drawLines(){
  int NUM_Lines = 30;
  colorMode(RGB);
    background(20);
    stroke(255, 120, 120);
    strokeWeight(5);

    translate(width / 2, height / 2);
    for (int i = 0; i < NUM_Lines; i++) {
        stroke(((i + 5) * 4) % 150 + 150, 0, 120);
        line(x1(tForLines + i), y1(tForLines + i), x2(tForLines + i), y2(tForLines + i));
    }
    for (int i = 0; i < NUM_Lines; i++) {
        stroke(120, 0, ((i + 5) * 4) % 150 + 150);
        line(x21(tForLines + i), y21(tForLines + i), x22(tForLines + i), y22(tForLines + i));
    }
    tForLines += 0.45; //скорость движения линий
}
