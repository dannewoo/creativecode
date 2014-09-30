int maxCol = 5;
int maxRow = 7;
int d = 60;
float pageMargin = 5;
  
void setup() {
  size(400, 550);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  noStroke();
  float r = d/2;
  float xSpacing = (width - (2*pageMargin)) / maxCol;
  float ySpacing = (height - (2*pageMargin)) / maxRow;
  translate(pageMargin + (xSpacing/2), pageMargin + (ySpacing/2));
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      pushMatrix();
      translate(x*xSpacing, y*ySpacing);
      if (x == 3 && y == 5) fill(0, 100, 95);
      else fill(105, 100, 50);
      if (x == 3 && y ==6) {
        textAlign(CENTER);
        text("Earth", 0, -20);
        text("Day…", 0, 0);
        text("'95", 0, 20);
      } else {
        beginShape();
          vertex(0, -r*0.4);
          bezierVertex(r * 0.2, -r * 0.9, r * 0.7, -r * 0.8, r*0.9, -r*0.45);
          bezierVertex(r * 1.1, -r * 0.1, r, r * 0.2, r*0.60, r*0.45);
          bezierVertex(r * 0.5, r * 0.5, r * 0.1, r * 0.6, 0, r);
          bezierVertex(-r * 0.1, r * 0.6, -r * 0.5, r * 0.5, -r*0.60, r*0.45);
          bezierVertex(-r, r * 0.2, -r * 1.1, -r * 0.1, -r*0.9, -r*0.45);
          bezierVertex(-r * 0.7, -r * 0.8, -r * 0.2, -r * 0.9, 0, -r*0.4);
        endShape();
      }
      popMatrix();
    }
  }
}
