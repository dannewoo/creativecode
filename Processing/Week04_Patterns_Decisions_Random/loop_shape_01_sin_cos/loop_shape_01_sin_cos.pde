int points = 6;
int d = 100;

void setup() {
  size(600, 400);
  background(255);
  translate(width/2, height/2);
  fill(0);

  beginShape();
  for (int i = 0; i < points; i++) {
    float vertexX = sin(radians(i * (360/points))) * d;
    float vertexY = cos(radians(i * (360/points))) * d;
    vertex(vertexX, vertexY);
  }
  endShape();
}
