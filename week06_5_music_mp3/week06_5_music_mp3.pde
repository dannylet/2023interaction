import processing.sound.*;

SoundFile file;
void setup(){
  size(300,300);
  file = new SoundFile(this,"ab.mp3");
  file.play();
}
void draw(){
  
  
}
