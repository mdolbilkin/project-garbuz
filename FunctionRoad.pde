int YForRoad=0;
int CurrentYForRoadForRoad = -350;
int CountForRoad = 1;
int ColorForRoad = 1;
void DrawRoad(){
    colorMode(RGB);
    background(20);
    strokeWeight(4);
    fill(20);
    stroke(208,0, CountForRoad%255);
    line(width/2-100, 0, width/2-400, height);
    line(width/2+100, 0, width/2+400, height);
    quad(width/2+10, YForRoad, width/2-10, YForRoad, width/2-20,YForRoad+ 70, width/2+20,YForRoad+ 70);
    quad(width/2+10, CurrentYForRoadForRoad, width/2-10, CurrentYForRoadForRoad, width/2-20,CurrentYForRoadForRoad+ 70, width/2+20,CurrentYForRoadForRoad+ 70);
    YForRoad+=10;
    CurrentYForRoadForRoad+=10;
    if((CountForRoad==254) || (CountForRoad==0)){
      ColorForRoad*=-1;
    }
    CountForRoad+=ColorForRoad;
    if(YForRoad>height){     
      YForRoad=0;
    }
    if(CurrentYForRoadForRoad>height){     
      CurrentYForRoadForRoad=0;
    }
}
