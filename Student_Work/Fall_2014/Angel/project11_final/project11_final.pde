int frames = 15;
PGraphics pg[] = new PGraphics[frames];

void setup() {
  size(displayWidth - 100, displayHeight - 100);
  //colorMode(HSB, 360, 100, 100);
  for(int i=0; i<frames; i++) {
    pg[i] = createGraphics(width, height);
    pg[i].beginDraw();
    pg[i].background(#0F283F);
    pg[i].stroke(255);
    pg[i].strokeWeight(3);
    pg[i].endDraw();
  }
}
void draw() {
  int currFrame = frameCount % frames;
  if(mousePressed) {
    pg[currFrame].beginDraw();
    if (key == CODED)
      if (keyCode == LEFT) {
        pg[currFrame].stroke(#F7F74D);//yellow
      }else if(keyCode == RIGHT) {
        pg[currFrame].stroke(#F74DA3);//pink
      }else if(keyCode == UP) {
        pg[currFrame].stroke(#79E1FA);//blue
      }else if (keyCode == DOWN) {
        pg[currFrame].stroke(#9BFC8C);}//green   
    pg[currFrame].line(mouseX, mouseY, pmouseX + 3, pmouseY + 3);
    pg[currFrame].endDraw();
  }
  image(pg[currFrame], 0, 0);
}
