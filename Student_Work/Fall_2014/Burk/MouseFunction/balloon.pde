color moveX, moveY;

PImage img;
int w = 154;
int h = 242;
int y = -h;
int speed = 3;

void setup() {
  size(400, 600);
  background(255);
  noStroke();
  img = loadImage("hotairballoon.png");
}

void draw() {
  background(255);
  image(img, moveX, moveY, 154, 242);
}

void mouseMoved() { // White ellipse
  moveX = mouseX;
  moveY = mouseY;
}
