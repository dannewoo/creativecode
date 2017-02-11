String word = "Hello world!";

void setup() {
  size(600, 400, P2D);
  background(255);
  //Create a font for Processing in Tools > Create Font…
  PFont font;
  font = loadFont("Rockwell-48.vlw");
  fill(0);
  textFont(font, 48);
  textAlign(CENTER);
  text(word, width/2, height/2);
}
