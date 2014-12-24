PImage img;
int cellsize = 2;
int cols, rows;

void setup() {
  size(900, 700, P3D);
  background(255);
  rectMode(CENTER);
  noStroke();
  img = loadImage("nebula.jpg");
  cols = width/cellsize;
  rows = height/cellsize;
}

void draw() {
  background(255);
  img.loadPixels();
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i * cellsize + cellsize/2;
      int y = j * cellsize + cellsize/2;
      int loc = x + (y * width);
      color c = img.pixels[loc];
      float w = width;
      float z = (mouseX/w) * saturation(img.pixels[loc]) * 10.0; 
      pushMatrix();
      translate(x, y, z);
      fill(c);
      rect(0, 0, cellsize, cellsize);
      popMatrix();
    }
  }
}
