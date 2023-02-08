class Timer{
   int startTime;
   int interval;
   
   Timer(int timeInterval){
    interval = timeInterval; 
   }
   
    public void Start(){
     startTime = millis();
   }
    public boolean Complete(){
     int elapsedTime = millis() - startTime;
     if(elapsedTime > interval){
       return true;
     }
     else{
       return false;
     }
     
   }
}
