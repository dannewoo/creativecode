void setup() {
  size(600, 400);
  background(0); 
  stroke(255);
  noFill();
  strokeWeight(3);

  int xStep = 15;

  // Draw normal random values
  translate(0, 50);
  beginShape();
  for(int i = 0; i < width; i += xStep) {
    float ranY = random(100);
    vertex(i, ranY);
  }
  endShape();

  // Draw perlin noise values
  translate(0, 200);
  beginShape();
  float noiseCount = 0;

  for(int i = 0; i < width; i += xStep) {
    float ranY = noise(noiseCount);
    vertex(i, ranY * 100);
    noiseCount += 0.2;
  }
  endShape();
}
