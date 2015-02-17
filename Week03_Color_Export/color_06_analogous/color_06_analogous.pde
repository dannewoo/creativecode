int rectSize = 130;
int colorRange = 30;
int origColor = 240;

void setup(){
  size(600, 400);
  rectMode(CENTER);
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  noStroke();
  fill(origColor, 80, 80);
  rect(width/2 - rectSize, height/2, rectSize, rectSize);
  fill((origColor + colorRange) % 360, 80, 80);
  rect(width/2, height/2, rectSize, rectSize);
  fill((origColor + colorRange*2) % 360, 80, 80);
  rect(width/2 + rectSize, height/2, rectSize, rectSize);
}

