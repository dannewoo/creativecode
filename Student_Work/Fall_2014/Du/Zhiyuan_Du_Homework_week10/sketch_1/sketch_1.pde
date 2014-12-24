PImage img1, img2;

void setup() {
  size(750, 1000);
  background(255);
  noStroke();
  img1 = loadImage("sunflower.jpg");
  img2 = loadImage("hibiscus.jpg");
  img1.blend(img2, 0, 0, width, height, 0, 0, width, height, ADD);
  image(img1, 0, 0);
}

void draw() {
  loadPixels();
  float x = map(mouseX, 0, width, 0, 200);
  float y = map(mouseY, 0, width, 0, 200);
  for (int i = 0; i < width*height; i++) {
    color p = pixels[i];
    float r = x;
    float g = green(p);
    float b = y;
    pixels[i] = color(r, g, b);
  }
  updatePixels();
}
