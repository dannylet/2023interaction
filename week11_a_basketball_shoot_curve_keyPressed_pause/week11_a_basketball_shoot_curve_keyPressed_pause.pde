PImage imgRack;
void setup(){
  size(1000,1000);
  imgRack=loadImage("rack.png");
}
boolean gameOver=false;  
void draw(){
  background(255);
  image(imgRack,200,200);
  if(flying){
    if(!gmaeOver){//if(!keyPressed){
    x += vx;
    y += vy;
    vy += 0.98;
    }
  }else{
    x=mouseX;
    y=mouseY;
  if(mousePressed){
    fill(255);ellipse(posX,posY,20,20);
    line(posX,posY,x,y);
    }
  }
  fill(#FFA652);ellipse(x,y,20,20);
}
boolean flying=false;
float x,y,vx,vy;
float posX = -100,posY=-100;
void mousePressed(){
  posX = mouseX;
  posY = mouseY;
}
void mouseReleased(){
  vx = posX-mouseX;
  vy = posY-mouseY;
  flying = true;
}
