int d = 100;
int y = d/2;
int speed = 1;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(360);
  // Increase the location of y by speed every frame
  y = y + speed;
  if ((y > height - d/2) || (y < d/2)) {
    // If the object reaches the bottom or top reverse movement
    speed = speed * -1;
  }

  // Display circle at y location
  fill(0);
  ellipse(width/2, y, d, d);
}
