int rectHeight = 100;

void setup(){
  size(600, 400);
  rectMode(CORNER);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  translate(25, 0);
  for (int i = 0; i < 11; i++) {
    fill(0, 0, 100 - (i*10));
    rect(i*50, height/2 - rectHeight/2, 50, rectHeight);
  }
  
  noFill();
  stroke(1);
  rect(0, height/2 - rectHeight/2, 550, rectHeight);
}

