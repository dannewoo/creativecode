PImage img1, img2;

void setup() {
  size(600, 400);
  background(255);
  img1 = loadImage("desert.jpg");
  img2 = loadImage("ocean.jpg");
  image(img1, 0, 0, 300, 400);
  image(img2, width/2, 0, 300, 400);
}

void draw() {
  img1 = loadImage("desert.jpg");
  img2 = loadImage("ocean.jpg");
  if (key == CODED) {
    if (keyCode == UP) {
      img1.blend(img2, 0, 0, width, height, 0, 0, width, height, ADD);
      image(img1, 0, 0);
    } else if (keyCode == LEFT) {
      img1.blend(img2, 0, 0, width, height, 0, 0, width, height, SUBTRACT);
      image(img1, 0, 0);
    }else if (keyCode == DOWN) {
      img1.blend(img2, 0, 0, width, height, 0, 0, width, height, LIGHTEST);
      image(img1, 0, 0);
    }else if (keyCode == RIGHT) {
    img1.blend(img2, 0, 0, width, height, 0, 0, width, height, MULTIPLY);
    image(img1, 0, 0);
    }
  }
}
