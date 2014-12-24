void setup() {
  size(600, 400);
  background(0);
  noStroke();
  fill(255, 0, 0, 50);
}

void draw() {
  int x = mouseX;
  int y = mouseY;
  if (mousePressed == true) {
    rect(x, y, pmouseX, pmouseY);
  }
}
