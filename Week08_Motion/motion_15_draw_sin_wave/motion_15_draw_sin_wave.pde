float angle = 0;
float xSpeed = 2;
float d = 40;
float x = -d;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
}

void draw() {
  background(255);
  x = x + xSpeed;
  fill(0);
  float y = sin(angle) * 150;
  ellipse(x, y + height/2, d, d);
  angle += 0.03;
  if (x > width + 16) {
    x = -d;
  }
}

