
void setup() {
  // Setup the 3D environment using the P3D renderer
  size(600, 400, P3D);
  background(0);
  fill(200);
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2, -width);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, -PI, PI));
  noStroke();
  scale(2);
  beginShape(TRIANGLE_FAN);
  vertex(257.5, 250);
  vertex(257.5, 215); 
  vertex(292, 250); 
  vertex(257.5, 285); 
  vertex(222, 250); 
  vertex(257.5, 215); 
  endShape();
popMatrix();
  



}
