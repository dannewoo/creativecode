float h = hour();
float m = minute();
float s = second();
int d = 100;


void setup() {
  size(400,600);
  background(0);
  noStroke();
  rectMode(CENTER);
    
}
void draw() {
  background(0);
  int points = second();
  translate(width/2, height/2);
  beginShape();
  for (int i = 0; i < points; i++) {
    float vertexX = sin(radians(i * (360/points))) * d;
    float vertexY = cos(radians(i * (360/points))) * d;
    vertex(vertexX, vertexY);
  }
  endShape();
}

  
 

