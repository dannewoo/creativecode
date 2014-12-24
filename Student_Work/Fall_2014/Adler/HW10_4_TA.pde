PImage img, maskImg;

void setup() {
  size(960,720);
  noStroke();
  img = loadImage("BBridge.jpg");
}

void draw() {
  background(img);
  loadPixels();
  float x = map(mouseX, 10, width, 0, 255);
  float y = map(mouseY, 0, width, 10, 255);
  for (int i = 0; i < width*height; i++) {
    color p = pixels[i];
    float r = x;
    float g = red(p);
    float b = y;
    pixels[i] = color(r, g, b);
  }
  updatePixels();
}
