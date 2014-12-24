int maxCol = 5;
int maxRow = 3;
int circleD = 80;
int triSize =100;
int circleSize = 100;
int rectSize = 100;
int padding = 100;

void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 0);
  
  noFill();
  stroke(0, 0, 100);
  //triangle(0, triSize, triSize/2, 0, triSize, triSize);
  
  pushMatrix();
  translate(width - padding - 60, height - padding);
  quad(0, 10, 120, 0, 100, 70, 20, 100);
  popMatrix();
  
  ellipse(padding, circleSize, circleSize, circleSize);
  
  rect(width - padding - rectSize/2, rectSize/2, rectSize, rectSize);

pushMatrix();
translate(width/2, height/2);
rotate(PI);
triangle(0, -65, 25, 25, -25, 25);
popMatrix();

rectMode(CENTER);
rect(width/2, height/2 - 25, 100, 100);

int xSpacing = (width/maxCol);
  int ySpacing = (height/maxRow);
  translate(30, 20);
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      if (x == 3 && y == 2) {
        noFill();
      }
      stroke(0, 0, 100);
      triangle(x*xSpacing, x*xSpacing, y*ySpacing, 100, y*ySpacing, triSize);
      //rect(x*xSpacing, y*ySpacing, circleD, circleD);
    }
  }
}

