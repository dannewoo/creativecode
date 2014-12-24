void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100, 100);
  background(60, 40, 100);
  noStroke();
}

void draw() {
  if(mousePressed == true) {
    fill(random(181, 360), 100, 100);
    ellipse(mouseX, mouseY, random(1, 20), random(1, 20));
  }
}
