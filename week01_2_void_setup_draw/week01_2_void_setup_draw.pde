//互動模式
void setup(){
  size(500,500);
  background(255);///白色背景
}

void draw(){
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}//畫線(滑鼠的座標mouseX,mouseY,到之前滑鼠座標pmouseX,pmouseY)
