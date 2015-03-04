void setup() {
  size(600, 400);
  background(255);
  fill(0);

  star(width/2 - 200, height/2, 50, 10, 0.2);
  star(width/2, height/2, 30, 20, 0.5);
  star(width/2 + 200, height/2, 35, 40, 0.5);
}

void star(int x, int y, int d, int points, float innerPoints) { 
  pushMatrix();
  translate(x, y);
  beginShape();
  for (int i = 0; i < points; i++) {
    float posNegVal;
    if (i % 2 == 1) posNegVal = d*innerPoints;
    else posNegVal = d;
    float vertexX = sin(radians(i * (360/points))) * (d + posNegVal);
    float vertexY = cos(radians(i * (360/points))) * (d + posNegVal);
    vertex(vertexX, vertexY);
  }
  endShape();
  popMatrix();
}

