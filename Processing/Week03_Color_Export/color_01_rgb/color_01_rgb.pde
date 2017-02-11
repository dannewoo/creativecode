int rectSize = 130;

void setup() {
  size(600, 400);
  colorMode(RGB, 255, 255, 255);
  noStroke();
  background(255);
  rectMode(CENTER);
  
  fill(255, 0, 0);
  rect(width/2 - rectSize, height/2, rectSize, rectSize);
  fill(0, 255, 0);
  rect(width/2, height/2, rectSize, rectSize);
  fill(0, 0, 255);
  rect(width/2 + rectSize, height/2, rectSize, rectSize);
}
