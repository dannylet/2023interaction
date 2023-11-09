PImage img;
int[][] pos = {{94,490},{247,524},{177,525},{160,491},{152,456},{195,490},{229,490},{263,490},{322,456},{298,490},{331,490},{367,490},{314,524},{281,524},{356,457},{392,457},{84,456},{185,456},{126,490},{219,457},{288,456},{212,524},{119,457},{143,525},{254,456},{110,524}};
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
  fill(0,255,0,128);
  for(int i =0;i<26;i++){
    if(ID<typing.length() && typing.charAt(ID)-'a'==i)rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i])rect(pos[i][0],pos[i][1],28,30,5);
  }
  fill(0);//黑色字
  textSize(50);
  text(typing,50,50);//要打的字
  fill(255,0,0);
  if(ID<typing.length())text(typed+typing.charAt(ID),50,100);//現在要打的字
  fill(0);//再用黑色秀出打好的字
  text(typed,50,100);//已經打好的字
}
String typing = "printfprintfprintf";
String typed="";//一開始打0個字
int ID = 0;//第幾個字要被打
boolean[] pressed=new boolean[26];//Java的陣列宣告,都是0或false
void keyPressed(){
  if(key>='a' && key<='z'){
    if(ID<typing.length()&&key==typing.charAt(ID)){
    pressed[key-'a']=true;
    typed += key;
    ID++;
  }else{
    background(255,0,0);///輸入錯就有紅色閃爍
    }
  }
}
void keyReleased(){
  if(key>='a' && key<='z')pressed[key-'a']=false;
}
void mousePressed(){
  println(mouseX,mouseY);//定位，印mouse座標
}
