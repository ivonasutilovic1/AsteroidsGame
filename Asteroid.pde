public class Asteroid extends Floater
{
 double rotSpeed;
 Asteroid(){
 corners=8;
 rotSpeed=(int)(Math.random()*15);
 r=60;
 g=60;
 b=60;
 myCenterX=(int)(Math.random()*1005);
 myCenterY=(int)(Math.random()*1005);
 myXspeed=(int)(Math.random()*5);
 myYspeed=(int)(Math.random()*5);
 myPointDirection=(int)(Math.random()*365+1);
 
 int [] x={(int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16)};
 int [] y={(int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16), (int)(Math.random()*32-16)};
 xCorners =x;
 yCorners=y;
 
 }
 public void move(){
 turn(rotSpeed);
 super.move();
 }
 }
