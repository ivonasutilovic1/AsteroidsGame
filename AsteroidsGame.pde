public Star [] galaxy = new Star [700];
public Spaceship ward = new Spaceship ();
ArrayList <Asteroid> field = new ArrayList <Asteroid> ();
int fieldlength=40;
Bullet bill = new Bullet(ward);

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
 
 
 
 if(dist((float)ward.getXCenter(), (float)ward.getYCenter(), (float)field.get(i).getXCenter(), (float)field.get(i).getYCenter())<30){
 
 field.remove(field.get(i));
 fieldlength--;
 
 if(ward.getB()==255){
 
 ward.setR(0);
 ward.setG(255);
 ward.setB(0);
 }
 else{
 ward.setR(ward.getR()+8);
 ward.setG(ward.getG()-8);
 
 }
 if(ward.getR()>255)
 ward.setCorners();
 }
 }
 
 

 
 ward.show();
 ward.move();
 if(keyPressed){
 if(key=='w'){
 ward.accelerate(0.1);
 }
 if(key=='s'){
 ward.accelerate(-0.1);
 }
 if(key=='a'){
 ward.setDirection(ward.getDirection()+2);
 }
 if(key=='d'){
 ward.setDirection(ward.getDirection()-2);
 }
 if(key=='r'){
 billy.add(new Bullet(ward));
 }
 if(key==' '){
 
 ward.setXSpeed(0);
 ward.setYSpeed(0);
 ward.setXCenter((int)(Math.random()*1000));
 ward.setYCenter((int)(Math.random()*1000));
 ward.setDirection((int)Math.random()*360);
 }
 }

}
