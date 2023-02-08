int XForDots= 600;
int YForDots= 0;
int DeltaForDots = 10;
int countForDots = 0;
void DrawDots(){
    for(int i = 1;i<=5;i++){
      stroke(208, 0, 255);
      circle(XForDots+i*30, YForDots, 5);
      circle(XForDots-i*30, YForDots, 5);
      circle(XForDots+i*30+180, YForDots, 5);
      circle(XForDots-i*30-180, YForDots, 5);
    }
    for(int i = 1;i<=5;i++){
      stroke(0, 0, 255);
      circle(YForDots*12/7, 350+i*10, 5);
      circle(YForDots*12/7, 350-i*10, 5);
    }
    if(abs(XForDots-width/2)>=50){
       DeltaForDots*=-1;
    }
    XForDots+=DeltaForDots;
    YForDots+=abs(DeltaForDots);
    delay(100);
    if(YForDots>=height+20){
      YForDots=0;
      XForDots=600;
      background(20);
    }
}
