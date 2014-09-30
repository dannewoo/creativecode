int points = 120;
int d = 100;

void setup() {
  size(600, 400);
  background(255);
  translate(width/2, height/2);
  fill(0);

  beginShape();
  float noiseCount = 0;
  for (int j = 0; j < points; j++)
  {
    float randomValue;
    if (j % 2 == 1) {
      randomValue = -noise(noiseCount);
    } else {
      randomValue = noise(noiseCount);
    }
    float vertexX = sin(radians(j * (360/points))) * (d + (randomValue*100));
    float vertexY = cos(radians(j * (360/points))) * (d + (randomValue*100));
    vertex(vertexX, vertexY);
    noiseCount += 0.2;
  }
  endShape();
}
