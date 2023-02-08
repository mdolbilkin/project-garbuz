import themidibus.*;
import javax.sound.midi.MidiMessage;
// Для обработки нот и ошибок:
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Locale;
import static java.lang.System.out;
import static java.lang.System.err;

MidiBus myBus; 
int midiDevice  = 1, xpos, ypos, len;
int  colorline = 255, deltacol, sideline = 200, countlines = 0;
boolean drawline = false, backblack = false, changeback = false; 

IntList positionsX, positionsY;

boolean changebackgr = false, backcol = false;
int deltadiamLP = 0, deltadiamHP = 0, x1, y1;
float diam, diamHP = 100, maxd;

int amount = 12;
float x[] = new float[amount];
float y[] = new float[amount];
float velx[] = new float[amount];
float vely[] = new float[amount];
int velx1 = 5, vely1 = 7;
int switchanimation;
int countbeatsLOW, countbeatsHIGH, countbeatsALL;

int countbeats = 0, numOfAnim = 1, radintro = 10;
boolean gointro;
int get_animation(){
  return switchanimation;
}
void setup() {
  for (int i = 0; i < amountForSetka; i++) { //Для создания сетки
    RForSetka[i] = 3;
    xForSetka[i] = random(RForSetka[i], width - RForSetka[i]);
    yForSetka[i] = random(RForSetka[i], height - RForSetka[i]);
    velXForSetka[i] = random(2, 6) * ((int)random(0, 2) == 0 ? 1 : -1);
    velYForSetka[i] = random(2, 6) * ((int)random(0, 2) == 0 ? 1 : -1); //направление векторов и скорость объектов
  } //Для создания сетки
  for(int i = 0; i < stars.length; i++ ){//для создания массива звезд 
    stars[i] = new star();
  } //для создания массива звезд
  background(0);
  size(1200, 700);

  MidiBus.list(); 
  myBus = new MidiBus(this, midiDevice, 4);

  positionsX = new IntList();
  positionsY = new IntList();

  x1 = width/2;
  y1 = height/2;

  if (height > width) {
    diam = width*0.6;
  } else {
    diam = height*0.6;
  }
  maxd = diam;

  for (int i = 0; i < amount; i++) {
    x[i] = random((diamHP/2+50), width - (diamHP/2+50));
    y[i] = random((diamHP/2 +50), height - (diamHP/2 + 50));
    velx[i] = random(5, 20) * ((int)random(0, 2)==0?1:-1);
    vely[i] = random(3, 10) * ((int)random(0, 2)==0?1:-1);
  }
}

void draw() {
  if (switchanimation == 0){
    println(countbeatsHIGH);
    if(countbeatsHIGH > 30 && countbeatsHIGH < 60){
      DrawFiveCircles();
    }
    else if(countbeatsHIGH > 60 && countbeatsHIGH < 75){
      DrawCircles();
    }
    else if(countbeatsHIGH > 75){
      countbeatsHIGH = 0;
    }
    else{
    drawHedgehog();
    }
  }
  else if (switchanimation == 1){
    if(countbeatsLOW > 20 && countbeatsLOW < 45){
      DrawDots();
    }
    else if(countbeatsLOW > 45 && countbeatsLOW < 70){
      DrawFrame();
    }
    else if(countbeatsLOW > 70){
      countbeatsLOW = 0;
    }
    else{
      drawSetka();
    }
    
    
    
  }
  else if (switchanimation == 2){
    if(countbeatsALL > 40 && countbeatsALL < 80){
      drawStars();
    }
    else if (countbeatsALL > 80 && countbeatsALL < 120){
      DrawRoad();
    }
    else if (countbeatsALL > 120){
      countbeatsALL = 0;
    }
    else{
      drawLines();
    }
  }
}

void midiMessage(MidiMessage message, long timestamp, String bus_name) { 
  int note = (int)(message.getMessage()[1] & 0xFF);
  int vel = (int)(message.getMessage()[2] & 0xFF);
  print("Bus " + bus_name + ": Note "+ note + ", vel " + vel);
  if (vel > 0 ) {
    switch(note)
    {
    case 64:
      if(countbeatsALL == 0 && countbeatsLOW == 0){
        switchanimation = 0;
      }
      countbeatsHIGH++;
      break;
    case 65:
      if(countbeatsALL == 0 && countbeatsHIGH == 0){
        switchanimation = 1;
      }
      countbeatsLOW++;
      break;
    case 66:
      if(countbeatsHIGH == 0 && countbeatsLOW == 0){
        switchanimation = 2;
      }
      countbeatsALL++;
      break;
    }
    println("Animation: " + switchanimation);
  }
}
