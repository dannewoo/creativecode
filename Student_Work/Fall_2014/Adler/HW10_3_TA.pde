PImage img;
float s;

void setup() {
  size(950, 700);
  background(255);
  img = loadImage("BrooklynBridge.jpg");
  //tint(255, 0, 0);
  image(img, 0, 0, width, height);
}
void draw() {
  background(255);
  s = map(mouseX, 0, width, 1, 100);
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      fill(img.pixels[loc]);
      rect(x, y, s, s);
    }
  }
}
