void setup() {
  size(600, 400); 
  smooth();
  fill(0);
  noStroke();

  // Here is how to create a bezier curve when drawing
  // bezierVertex(x2, y2, x3, y3, x4, y4)
  // start point, mid point and end point
  translate(width/2 - 150, 0);
  beginShape();
  vertex(0, 100);
  bezierVertex(0, 100, 50, 0, 100, 100);
  bezierVertex(100, 100, 150, 200, 200, 100);
  bezierVertex(200, 100, 250, 0, 300, 100);
  vertex(300, 300);
  vertex(0, 300);
  endShape();
}
