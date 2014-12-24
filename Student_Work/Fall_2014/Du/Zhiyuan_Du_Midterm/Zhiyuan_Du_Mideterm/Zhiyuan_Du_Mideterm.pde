int circleSize = 80;

float noiseVal;
float noiseScale=0.005;

void setup() {
  size(1200, 800);
  colorMode(HSB, 360, 100, 100);
  

  // loop through every pixel on the screen
  for (int y = 0; y < height; y+=circleSize) {
    for (int x = 0; x < width; x+= circleSize) {
      
      
      noiseDetail(5, 0.5);
      fill (noiseVal = noise((x) * noiseScale, (y) * noiseScale));
      stroke(75, 15, noiseVal*50);
      ellipse(x, y, circleSize * 1.2, circleSize * 1.2);
      noiseDetail(5, 0.5);
      fill (noiseVal = noise((x) * noiseScale, (y) * noiseScale));
      stroke(150, 30, noiseVal*100);
      ellipse(x, y, circleSize * 0.6, circleSize * 0.6);
      noiseDetail(5, 0.5);
      fill (noiseVal = noise((x) * noiseScale, (y) * noiseScale));
      stroke(300, 60, noiseVal*200);
      ellipse(x, y, circleSize * 0.3, circleSize * 0.3);
    }
  }

}
