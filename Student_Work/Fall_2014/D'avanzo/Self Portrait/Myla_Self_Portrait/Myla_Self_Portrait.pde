int rectSize = 200;

void setup() {
  size(400, 600);
  colorMode(HSB, 360, 100, 100);
  background(0, 250, 50);
  noStroke();
    
  fill (40, 0, 0);
  rectMode(CENTER);
  rect(width/2, height/2, 10, rectSize * 7);
  
  fill (43, 100, 90);
  rectMode(CENTER);
  rect(width/2, 550, 55, rectSize * 2);
  
  pushMatrix();
  fill (38, 35, 90);
  translate(142, 277);
  triangle(30, 75, 58, 20, 86, 75);
  popMatrix();
  
  fill (40, 0, 0);
  translate(142, 277);
  triangle(50, 35, 58, 20, 65, 30);
}
