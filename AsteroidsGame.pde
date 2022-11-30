
Star [] galaxy = new Star [200];
Spaceship dilly = new Spaceship();

void setup(){
  size(700,700);
  for(int i = 0; i<galaxy.length; i++){
    galaxy[i] = new Star();
  }
  
}

void draw(){
  background(0);
  for(int i = 0; i<galaxy.length; i++){
    galaxy[i].show();
  }
  dilly.show();
  dilly.move();
   if(keyPressed){
     if(key=='w'){
        dilly.accelerate(0.1);
      }
      if(key=='s'){
        dilly.accelerate(-0.1);
      }
      if(key=='a'){
        dilly.myPointDirection+=2;
      }
      if(key=='d'){
        dilly.myPointDirection-=2;
      }
      if(key==' '){
       
        dilly.myXspeed=0;
        dilly.myYspeed=0;
        dilly.myCenterX=(int)(Math.random()*1000);
        dilly.myCenterY=(int)(Math.random()*1000);
        dilly.myPointDirection=((int)Math.random()*360);
 
      }
   }
}
