int maxCol = 5;
int maxRow = 7;
int d = 60;
float pageMargin = 5;
  
void setup() {
  size(400, 550);
  colorMode(HSB, 360, 100, 100);
  background(0, 100, 95);
  noStroke();
  float xSpacing = (width - (2*pageMargin)) / maxCol;
  float ySpacing = (height - (2*pageMargin)) / maxRow;
  translate(pageMargin + (xSpacing/2), pageMargin + (ySpacing/2));
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      pushMatrix();
      translate(x*xSpacing, y*ySpacing);
      if (x == 3 && y == 5) fill(90, 100, 55);
      else fill(0, 0, 100);
      
      {
        beginShape(TRIANGLE_FAN);
          vertex(57.5, 50);
          vertex(57.5, 15); 
          vertex(92, 50); 
          vertex(57.5, 85); 
          vertex(22, 50); 
          vertex(57.5, 15); 
        endShape();
      }
      popMatrix();
    }
  }
}
