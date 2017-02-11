int rectSize = 130;
float colorRange = random(10, 40);
float origColor = random(0, 360);

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
  
  println("Original Color: " + origColor + " | " + "Color Range: " + colorRange);
}

