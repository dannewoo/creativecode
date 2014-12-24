int maxCol = 6;
int maxRow = 1;
int circleSize = 75;

void setup() {
  size(900, 500);
  background(0, 0, 0);
  stroke(250);
  ellipseMode(CORNER);
  
  int xSpacing = (width/maxCol);
  int ySpacing = (height/maxRow);
  translate(30, 200);
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      fill(0);
      ellipse(x*xSpacing, y*ySpacing, circleSize, circleSize);
      if (x == 300) fill(100);
    }
  }
}
