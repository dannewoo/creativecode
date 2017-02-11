int rectHeight = 100;

void setup(){
  size(600, 400);
  rectMode(CORNER);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  fill(0, 0, 100);
  rect(25, height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 90);
  rect(25 + 50, height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 80);
  rect(25 + (50*2), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 70);
  rect(25 + (50*3), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 60);
  rect(25 + (50*4), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 50);
  rect(25 + (50*5), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 40);
  rect(25 + (50*6), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 30);
  rect(25 + (50*7), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 20);
  rect(25 + (50*8), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 10);
  rect(25 + (50*9), height/2 - rectHeight/2, 50, rectHeight);
  fill(0, 0, 0);
  rect(25 + (50*10), height/2 - rectHeight/2, 50, rectHeight);
  
  noFill();
  stroke(1);
  rect(25, height/2 - rectHeight/2, 550, rectHeight);
}

