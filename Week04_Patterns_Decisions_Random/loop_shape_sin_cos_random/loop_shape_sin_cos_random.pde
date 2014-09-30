int points = 120;
int d = 100;

void setup() {
  size(600, 400);
  background(255);
  translate(width/2, height/2);
  fill(0);

  beginShape();
  for (int j = 0; j < points; j++)
  {
    float randomValue;
    if (j % 2 == 1) {
      randomValue = -random(0, d/2);
    } else {
      randomValue = random(0, d);
    }
    float vertexX = sin(radians(j * (360/points))) * (d + randomValue);
    float vertexY = cos(radians(j * (360/points))) * (d + randomValue);
    vertex(vertexX, vertexY);
  }
  endShape();
}
