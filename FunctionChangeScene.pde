boolean SceneChanged = true;
int radiusForSceneChange= 7;
void ChangeScene(){
    
    fill(255);
    SceneChanged = false;
    colorMode(RGB);
    background(20);
    if (radiusForSceneChange < min(height, width))
    {
      circle(width/2, height/2, radiusForSceneChange);
      radiusForSceneChange += 10;
    }
    else{
      SceneChanged = true;
      //currentTime=0;
      radiusForSceneChange= 7;
    }
}
