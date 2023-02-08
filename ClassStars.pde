class star{
  float x, y, z, px, py;
  star(){
   x = random(-width, width) ;
   y = random(-height, height) ;
   z =random(width);
   px = x;
   py = y;
  }
  void update(){
    z = z-10;      //отвечает за скорость точек
    if(z <10) {
      z = width;
      x = random(-width, width) ;
      y = random(-height, height) ;
      px = x;
      py = y;
    }
  }
  void show(){
   fill(random(150, 255), 0 ,random(150, 255));
   noStroke();
   float sx = map( x/z, 0, 1, 0, width);
   float sy = map( y/z, 0, 1, 0, height);
   float r = map(z, 0, width, 20, 0);
   ellipse(sx, sy, r, r);
   px = sx;
   py = sy;
  }
}
