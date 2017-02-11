float noiseVal;
float noiseScale=0.005;

void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);

  // loop through every pixel on the screen
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      noiseDetail(5, 0.5);
      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
      stroke(150, 30, noiseVal*100);
      point(x,y);
    }
  }

}
