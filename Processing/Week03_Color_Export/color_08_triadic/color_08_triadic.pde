int rectSize = 130;
int origColor = 30;

void setup(){
  size(600, 400);
  rectMode(CENTER);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  fill(origColor, 80, 80);
  rect(width/2 - rectSize, height/2, rectSize, rectSize);
  fill((origColor + 120) % 360, 80, 80);
  rect(width/2, height/2, rectSize, rectSize);
  fill((origColor + 240) % 360, 80, 80);
  rect(width/2 + rectSize, height/2, rectSize, rectSize);
}

