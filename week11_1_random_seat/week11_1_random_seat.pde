void setup(){
  size(600,500);
}
void draw(){
  background(255);
  for(int i=0;i<4;i++){
    for(int j=0;j<6;j++){
      fill(255,165,0);rect(j*100,i*100,100,100);
      fill(0);text("Hello",j*100+25,i*100+50);
    }
  }
}
