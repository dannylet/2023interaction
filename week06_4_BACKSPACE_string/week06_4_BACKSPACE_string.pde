void setup(){
  size(700,700);
  textSize(64);
  background(#17EEFF);
}
String line = "Input:";
void draw(){
  text(line,100,100);
}
void keyPressed(){
  if(key>='A' && key<='Z')line+= key;
  if(key>='a' && key<='z')line+= key;
}
