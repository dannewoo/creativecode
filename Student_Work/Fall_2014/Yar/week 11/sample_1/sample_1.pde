// core
PImage img;
int mainw = 800;
 int mainh = 600;
 
///3d contools 

int cellsize = 3;
int cols, rows; 
float size = 8;

void setup() {
  
  frameRate(100);

  size(mainw, mainh, P3D);
  background(0);
  rectMode(CENTER);

  noStroke();
  img = loadImage("bg2.jpg");

  cols = width/cellsize;
  rows = height/cellsize;
}

void draw() {

  background(0);
  img.loadPixels();
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      int x = i * cellsize + cellsize/2;
      int y = j * cellsize + cellsize/2;
      int loc = x + (y * width);
      color c = img.pixels[loc];
      float w = width;
      float z = (mouseX/w) * saturation(img.pixels[loc]) * size; 
      pushMatrix();
      translate(x, y, z);
      fill(c);
    rect(0, 0, cellsize, cellsize);
     popMatrix();
   
    }
  }
}
