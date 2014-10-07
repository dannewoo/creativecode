//Reference the geomerative library
import geomerative.*;
int fontSize = 48;
String word = "Hello World!";

void setup() {
  size(600, 400, P2D);
  background(255);
  // initialize the geomerative library
  RG.init(this);
  
  // create a new font, you have to use a ttf (True Type Font)
  RFont font = new RFont("chunkfive.ttf", fontSize, CENTER);
  // Alternative for size and alignment
  /* RFont font = new RFont("chunkfive.ttf");
  font.setSize(fontSize);
  font.setAlign(CENTER); */

  translate(width/2, height/2);
  font.draw(word);
}
