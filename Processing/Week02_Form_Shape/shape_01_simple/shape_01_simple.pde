int circleSize = 100;
int rectSize = 100;
int triSize = 100;
int padding = 175;

void setup() {
  size(600,400);
  background(255);
  
  //draw shapes with fill color black
  fill(0);
  noStroke();
  //circle
  ellipse(padding, circleSize, circleSize, circleSize);
  //square
  rect(width - padding - rectSize/2, rectSize/2, rectSize, rectSize);
  //triangle
  pushMatrix();
  translate(padding - triSize/2, height - padding);
  triangle(0, triSize, triSize/2, 0, triSize, triSize);
  popMatrix();
  //quadrilateral
  pushMatrix();
  translate(width - padding - 60, height - padding);
  quad(0, 10, 120, 0, 100, 70, 20, 100);
  popMatrix();
}
