PImage img;
int x, y;

void setup() {
  size(600, 600);
  background(255);
  noStroke();
  img = loadImage("snowman.png");
}
  
void draw() {
  x = round(random(width));
  y = round(random(height));
  color c = img.get(x, y);
  fill(255, 70);
  ellipse(x, y, 20, 20);
}



void mousePressed() {
  image(img, 0, 0, width, height);
  colorMode(HSB);
  fill(160, 100, 100, 65);
  ellipse(mouseX, mouseY, 200, 200);
  
  
}
