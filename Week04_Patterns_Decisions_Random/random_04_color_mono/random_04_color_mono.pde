int rectSize = 130;

void setup(){
  size(600, 400);
  rectMode(CENTER);
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  noStroke();
  fill(0, 80, random(20, 100));
  rect(width/2 - rectSize, height/2, rectSize, rectSize);
  fill(0, 80, random(20, 100));
  rect(width/2, height/2, rectSize, rectSize);
  fill(0, 80, random(20, 100));
  rect(width/2 + rectSize, height/2, rectSize, rectSize);
}

