int points = 6;
int d = 100;

void setup() {
  size(600, 400);
  background(255);
  translate(width/2, height/2);
  fill(0);

  beginShape();
  for (int j = 0; j < points; j++)
  {
    float vertexX = sin(radians(j * (360/points))) * d;
    float vertexY = cos(radians(j * (360/points))) * d;
    vertex(vertexX, vertexY);
  }
  endShape();
}
