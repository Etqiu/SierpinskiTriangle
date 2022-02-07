float i =100;
Star[]blinky = new Star[200];
 float time = 0;
 boolean pressed = false;
 int x = 255;
 int y =255;
 int z = 255;
 float v = 5;
public void setup() { 
  size(1000, 1000);
  frameRate(60);
  for (int i = 0; i<blinky.length; i++) {
    blinky[i]=new Star();
  }
  stroke(255);
 
} 
public void draw() { 
 text("Speed:" +v, 500,500);
  background(0);
 System.out.println(v);

        for (int i = 0; i<blinky.length; i++) {
    blinky[i].show();
  }
     stroke(x,y,z);
      fill(x,y,z);
   s(250, 750, i);
   

  if (i >width+500)
  {     
    i/=2;
  }
  if(keyPressed){
    if(key == 'w'){
       
      i+=v;
      v*=1.1;
      
    }
    if(key =='s'){
      
      i-=v;
      v*=1.1;
      stroke(255);
      fill(0);
      if(i<width){
        i*=2;
      
      }
    }
    if(v>60){
      v=60;
    }
  }
 
}
public void s(float x, float y, float len) {
  if (len<=15) { 
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
public void keyReleased(){

    v=5;
    if(v<=0){
      v=1;
    }
}
  
class Star{
  private float positionX, positionY;
  private float mySize;
  private int myColor;
  private float time;
  private float time2;
  public Star(){
    positionX = (float)(Math.random()*1001);
    positionY = (float)(Math.random()*1001);
    mySize = 2;
    myColor = (int)(Math.random()*255);
    time = 0;
    time2 =0;
  }
  
  public void blink(){
    fill(0);
  }
  public void show(){
   stroke(0);
    fill(myColor);
    ellipse(positionX,positionY, 4, 4);
  }
  public void hypostasis(){
    if(millis()-time>2000){
    positionX = (float)(Math.random()*1000);
    positionY = (float)(Math.random()*1000);
    time = millis();
    }
  }
   public void hypostasis2(){
      if(millis()-time2>500){
    positionX = (float)(Math.random()*1000);
    positionY = (float)(Math.random()*1000);
    time2 = millis();
      }
  }
  public float getX(){
    return positionX;
  }
  public float getY(){
      return positionY;
    }
  public void setX(float n){
    positionX = n;
    positionY = n;
  }
}
