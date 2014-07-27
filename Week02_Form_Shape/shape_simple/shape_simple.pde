void setup() {
  size(600,400);
  background(255);
  
  //draw shapes with fill color black
  fill(0);
  noStroke();
  //circle
  ellipse(175, 100, 100, 100);
  //square
  rect(width - 175 - 100/2, 100/2, 100, 100);
  //triangle
  pushMatrix();
  translate(175 - 100/2, height - 175);
  triangle(0, 100, 100/2, 0, 100, 100);
  popMatrix();
  //quadrilateral
  pushMatrix();
  translate(width - 175 - 60, height - 175);
  quad(0, 10, 120, 0, 100, 70, 20, 100);
  popMatrix();
}
