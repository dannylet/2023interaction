PImage img;
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);///中心點畫4邊形
}
void draw(){
  background(#FFFFF2);///淡黃色,清背景
  image(img,0,600-266);
  fill(255,0,0,128);///fillr,g,b, 128是半透明
  rect(mouseX,mouseY,28,30,5);///5可以有圓滑的邊邊
}
void mousePressed(){
  print(mouseX,mouseY);//定位，印mouse座標
}
