int rectSize = 130;
float origColor = random(180, 360);

void setup(){
  size(600, 400);
  rectMode(CENTER);
  background(255);
  colorMode(HSB, 360, 100, 100);

  noStroke();
  fill(origColor, 80, 80);
  rect(width/2 - rectSize/2, height/2, rectSize, rectSize);
  fill((origColor + 180) % 360, 80, 80);
  rect(width/2 + rectSize/2, height/2, rectSize, rectSize);
  
  println("Original Color: " + origColor + " | " + "Complementary Color: " + (origColor + 180) % 360);
}

