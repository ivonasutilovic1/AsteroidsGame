public Star [] galaxy = new Star [700];
public Spaceship will = new Spaceship ();
ArrayList <Asteroid> field = new ArrayList <Asteroid> ();
int fieldlength=40;
Bullet bill = new Bullet(will);

ArrayList <Bullet> billy = new ArrayList <Bullet> ();


public void setup(){
 size(1000,1000);
 for(int i = 0; i<galaxy.length; i++){
 galaxy[i] = new Star();
 }
 for(int i=0; i<fieldlength; i++){
 field.add(new Asteroid());
 }
 for(int i=0; i<billy.size(); i++){
 billy.get(i).show();
 billy.get(i).move();
 }
 
 
 
 
 
}

public void draw(){
 background(0);
 
 
 
 
 for(int i = 0; i<galaxy.length; i++){
 galaxy[i].show();
 }
 
 for(int i=0; i<billy.size(); i++){
 billy.get(i).show();
 billy.get(i).move();
 
 
 

 
 }
 
 
 for(int p=0; p<billy.size();p++){
 for(int i=0; i<fieldlength; i++){
 if(dist((float)billy.get(p).getXCenter(), (float)billy.get(p).getYCenter(), (float)field.get(i).getXCenter(), (float)field.get(i).getYCenter())<30){
 
 field.remove(field.get(i));
 fieldlength--;
 
 
 
 }
 }
 
 
 }
 for(int i=0; i<fieldlength; i++){
 field.get(i).show();
 field.get(i).accelerate(Math.random()*1-0.5);
 field.get(i).move();
 
 
 
 if(dist((float)will.getXCenter(), (float)will.getYCenter(), (float)field.get(i).getXCenter(), (float)field.get(i).getYCenter())<30){
 
 field.remove(field.get(i));
 fieldlength--;
 
 if(will.getB()==255){
 
 will.setR(0);
 will.setG(255);
 will.setB(0);
 }
 else{
 will.setR(will.getR()+8);
 will.setG(will.getG()-8);
 
 }
 if(will.getR()>255)
 will.setCorners();
 }
 }
 
 

 
 will.show();
 will.move();
 if(keyPressed){
 if(key=='w'){
 will.accelerate(0.1);
 }
 if(key=='s'){
 will.accelerate(-0.1);
 }
 if(key=='a'){
 will.setDirection(will.getDirection()+2);
 }
 if(key=='d'){
 will.setDirection(will.getDirection()-2);
 }
 if(key=='r'){
 billy.add(new Bullet(will));
 }
 if(key==' '){
 
 will.setXSpeed(0);
 will.setYSpeed(0);
 will.setXCenter((int)(Math.random()*1000));
 will.setYCenter((int)(Math.random()*1000));
 will.setDirection((int)Math.random()*360);
 }
 }

}
