Particle [] hi = new Particle [300];//your code here
void setup()
{
  size (400, 400);
  for( int i = 0; i < 2; i++){
    hi[i] = new OddballParticle();
   }
   for (int i = 2; i < hi.length; i++)
   {
     hi[i] = new Particle(); 
   }
  
  //your code here
}
void draw()
{
  background(0);
  for (int i = 0; i <= hi.length - 1; i++){
   hi[i].show();
   hi[i].move();
  }
  //your code here
}
class Particle
{
  double myX, myY, mySpeed, mySize, myAngle;
  int myColor;
  Particle () {
    myX = 250;
    myY = 150;
    mySpeed = (double)(Math.random()*9);
    mySize = (double)(Math.random()*39)+30;
    myAngle = (double)(Math.random()*2*Math.PI);
    myColor = color((int)(Math.random()*160)+90,(int)(Math.random()*60)+10, (int)(Math.random()*170)+100, (int)(Math.random()*359));
  }
  void move(){
    myX = myX + (double)(Math.cos(myAngle)* mySpeed);
    myY = myY + (double)(Math.sin(myAngle)* mySpeed);
  }
  void show() { 
    ellipse((float)myX, (float)myY,(float) 5,(float)5); 
    fill (myColor); 
    stroke(0);
    
    
  //your code here
}
}

class OddballParticle extends Particle{ //inherits from Particle{
  OddballParticle(){
    myX = 100;
    myY = 150;
    mySpeed = (double)(Math.random()* 3);
    mySize = 10;
    myAngle = (int)(Math.random()*230);
    myColor = color((int)(Math.random()*50)+235,(int)(Math.random()*23)+235, (int)(Math.random()*70)+245, (int)(Math.random()*359));;
  //your code here
}
}
