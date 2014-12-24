int maxCol = 10;
int maxRow = 7;
int circleD = 40;
float colorRange = random(10, 40);
float origColor = random(0, 360);
float noiseVal;
float noiseScale=0.005;

void setup() {
  size(1088, 704);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background(10, 70, 80);
  ellipseMode(CORNER);
  
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      noiseDetail(2, 0.5);
      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
      stroke(150, 30, noiseVal*100);
      point(x,y);
    }
  }
  
  int xSpacing = (width/maxCol);
  int ySpacing = (height/maxRow);
  translate(30, 20);
  noStroke();
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      if (x != 1) {
        fill((origColor + colorRange) % 360, 40, 80);
      } else {
        fill((origColor + colorRange*5) % 360, 90, 80);
      }
      ellipse(x*xSpacing, y*ySpacing, circleD, circleD);
    }
  }
}
