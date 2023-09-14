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
void keyPressed(){
  if(key=='1') stroke(255,0,0); //如果按下數字1,筆觸為紅色
  if(key=='2') stroke(0,255,0); //如果按下數字2,筆觸為綠色
  if(key=='3') stroke(0,0,255); //如果按下數字3,筆觸為藍色
  if(key=='s'||key='S') save("output,png"); //按下s存檔
}
