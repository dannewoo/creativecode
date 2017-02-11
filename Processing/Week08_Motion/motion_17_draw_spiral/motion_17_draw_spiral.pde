float r = 0;
float angle = 0;
float d = 25;
float x, y;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
}

void draw() {
  background(255);
  x = r * cos(angle);
  y = r * sin(angle);
  fill(0, 255 - r);
  ellipse(x+width/2, y+height/2, d, d); 
  angle += 0.05;
  r += 0.2;
  if (x > width/2) { 
    r = 0; 
    angle = 0; 
  }
}

