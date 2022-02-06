float i =100;
Star[]blinky = new Star[200];
 float time = 0;
 boolean pressed = false;
 int x = 255;
 int y =255;
 int z = 255;
public void setup() { 
  size(1000, 1000);
  frameRate(60);
  for (int i = 0; i<blinky.length; i++) {
    blinky[i]=new Star();
  }
  stroke(255);
 
} 
public void draw() { 

  background(0);
 
 stroke(x,y,z);
      fill(x,y,z);
  s(250, 750, i);
      for (int i = 0; i<blinky.length; i++) {
    blinky[i].show();
  }
  i+=1;
  if (i>15000) {
    noLoop();
  }
  if (i >width+500)
  {     
    i/=2;
  }
  if(keyPressed){
    if(key == 'w'){
       
      i+=50;
    }
    if(key =='s'){
      
      i-=25;
      stroke(255);
      fill(0);
      if(i<width){
        i*=2;
      
      }
    }
  }
 
}
public void s(float x, float y, float len) {
  if (len<=7) { 
    triangle(x, y, x+(len), y, x+len/2, y-len);
  } else { 
    s(x, y, len/2); 
    s(x+len/2, y, len/2); 
    s(x+len/4, y-len/2, len/2);
  }
}
public void mouseWheel() {
  x =(int)(Math.random() * 155) + 100;
  y= (int)(Math.random() * 155) + 100;
  z =(int)(Math.random() * 155) + 100;
  fill((int)(Math.random() * 155) + 100, (int)(Math.random() * 155) + 100, (int)(Math.random() * 155) + 100);
}
