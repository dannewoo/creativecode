float noiseVal;
float noiseScale=0.009;
int maxCol = 5;
int maxRow = 9;
int d = 60;
float pageMargin = 20;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  
  for (int i = 0; i < width; i++) {
for (int j = 0; j < height; j++) {
fill(0, 100, 10*i);
ellipse(10*i, 10*j, 9, 9); }
}
 
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      noiseDetail(5, 0.5);
      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
      stroke(30, 70, noiseVal*100);
      point(x,y);
    }
  }
  
  float r = d/2;
  float xSpacing = (width - (2*pageMargin)) / maxCol;
  float ySpacing = (height - (2*pageMargin)) / maxRow;
  translate(pageMargin + (xSpacing/2), pageMargin + (ySpacing/2));
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      pushMatrix();
      translate(x*xSpacing, y*ySpacing);
      if (x == 2 || y == 4) fill(0, 100, 0);
      else fill(26, 79, 85);
      noStroke();
       {
        ellipse(r * 0.2, -r * 0.9, 45, 45);
        
      }
      popMatrix();
    }
  }
  
}
