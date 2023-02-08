int RadiusFor5Circles = 450;
int CountFor5Circles = -2;
void DrawFiveCircles(){
    colorMode(RGB);
    background(20);
    strokeWeight(4);
    fill(20);
    stroke(240,0, RadiusFor5Circles%255);
    circle(width/2, height/2, RadiusFor5Circles);
    circle(width/2+400, height/2+190, RadiusFor5Circles-90);
    circle(width/2+400, height/2-190, RadiusFor5Circles-90);
    circle(width/2-400, height/2+190, RadiusFor5Circles-90);
    circle(width/2-400, height/2-190, RadiusFor5Circles-90);
    if(RadiusFor5Circles<200 || RadiusFor5Circles>450){
     CountFor5Circles*=-1; 
    }
    RadiusFor5Circles+=CountFor5Circles;
} 
