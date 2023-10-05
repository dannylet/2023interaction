void setup(){
  size(400,400);
}
int[][] card = new int[8][11];
color[] C = {#FF5555, #FFAA00,#55AA55,#5555FF};
void draw(){
  background(255);
  for(int i=0;i<8;i++){
    for(int j=0;j<11;j++){
      drawCard(j*32,i*50,C[i%4]);
      fill(C[i%4]);
      rect(j*32,i*50,32,50);
  }
 }
}
void drawCard(int x,int y, int color c){
  stroke(128);
  fill(255);
  rect(x,y,32,50,7);
  fill(c);
  rect(x,y,32,50);
}
