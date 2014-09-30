int maxCol = 5;
int maxRow = 4;
int circleD = 60;

void setup() {
  size(600, 400);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 0);
  ellipseMode(CORNER);
  
  int xSpacing = (width/maxCol);
  int ySpacing = (height/maxRow);
  translate(30, 20);
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      if (x == 1) {
        fill(0, 100, 100);
      } else {
        fill(0, 0, 100);
      }
      ellipse(x*xSpacing, y*ySpacing, circleD, circleD);
    }
  }
}
