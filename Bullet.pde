
public class Bullet extends Floater
{
 
Bullet(Spaceship ship){
 myCenterX=will.getXCenter();
 myCenterY=will.getYCenter();
 myXspeed=will.getXSpeed();
 myYspeed=will.getYSpeed();
 myPointDirection=will.getDirection();
 accelerate(6);
}

public void show(){
 fill(#CF3CED);
 ellipse((float)myCenterX, (float)myCenterY, 4, 4);
}


public void move(){
 myCenterX += myXspeed; 
 myCenterY += myYspeed; 

 
}


}
