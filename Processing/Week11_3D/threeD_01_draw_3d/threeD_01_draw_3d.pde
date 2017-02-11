void setup() {
  // Setup the 3D environment using the P3D renderer
  size(600, 400, P3D);
  background(0);
  fill(200);
}

void draw() {
  background(0);
  translate(width/2, height/2, -width);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, -PI, PI));
  noStroke();
  rect(-200, -200, 400, 400);
  stroke(255);
  line(0, 0, -200, 0, 0, 200);
}
