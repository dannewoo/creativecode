void setup() {
  size(600, 400); 
  translate(width/2 - 150, 0);
  beginShape();
  vertex(0, 100);
  // First point sets the curve
  // Must have at least 4 points
  curveVertex(150, 600);
  curveVertex(0, 100);
  curveVertex(150, 100);
  curveVertex(300, 100);
  // And last point sets the curve
  curveVertex(150, 600);
  vertex(300, 300);
  vertex(0, 300);
  vertex(0, 100);
  endShape();
}
