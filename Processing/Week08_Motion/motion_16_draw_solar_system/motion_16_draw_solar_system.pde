float r1, r2, speed1, speed2;

void setup() {
  size(600, 400);
  noStroke();
  ellipseMode(CENTER);
  r1 = 0;
  r2 = 0;
  speed1 = 2;
  speed2 = 4;
}

void draw() {
  background(255);
  fill(0);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(r1));
  ellipse(0, -150, 30, 30);
  translate(0, -150);
  rotate(radians(-r1));
  rotate(radians(r2));
  ellipse(0, -30, 10, 10);
  popMatrix();
  
  fill(0);
  ellipse(width/2, height/2, 100, 100);
  
  r1 = r1 + speed1;
  r2 = r2 + speed2;
}
