int XforDrawFrame = 12;
int YforDrawFrame = 7;
void DrawFrame(){
    colorMode(RGB);
    background(20);
    stroke(208, 0, 255);
    strokeWeight(4);
    line(XforDrawFrame, 0, 0, YforDrawFrame);   
    line(width-XforDrawFrame, height, width,height - YforDrawFrame);    
    line(0, height-YforDrawFrame,XforDrawFrame, height);    
    line(width-XforDrawFrame, 0,width, YforDrawFrame);    
    
    stroke(255, 0, 47);
    line(XforDrawFrame+72, 0, 0, YforDrawFrame+42);
    line(width-XforDrawFrame-72, height, width,height - YforDrawFrame-42); 
    line(0, height-YforDrawFrame-42,XforDrawFrame+72, height);
    line(width-XforDrawFrame-72, 0,width, YforDrawFrame+42); 
    
    line(XforDrawFrame-72, 0, 0, YforDrawFrame-42);
    line(width-XforDrawFrame+72, height, width,height - YforDrawFrame+42); 
    line(0, height-YforDrawFrame+42,XforDrawFrame-72, height);
    line(width-XforDrawFrame+72, 0,width, YforDrawFrame-42); 
    XforDrawFrame+=24;
    YforDrawFrame+=14;
    if(XforDrawFrame>=width*2){
      XforDrawFrame = 0;
      YforDrawFrame = 0;
    }
}
