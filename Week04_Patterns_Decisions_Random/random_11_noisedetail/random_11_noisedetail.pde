void setup() {
  size(600, 400);
  background(0); 
  noFill();
  stroke(255);
  strokeWeight(3);

  // draw 3 times across the screen
  for(int j = 0; j < 3; j++) {
    float noiseCount = 0;
//    noiseDetail(j + 1, 1.2);
    noiseDetail(j + 1);

    translate(0, 80);
    beginShape();
    for(int i = 0; i < width; i += 10) {
      float ranY = noise(noiseCount);
      vertex(i, ranY * 100);
      noiseCount += 0.2;
    }
    endShape();
  }
}
