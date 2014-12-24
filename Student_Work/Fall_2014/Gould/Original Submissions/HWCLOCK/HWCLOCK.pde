float r, speed;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
  rectMode(CENTER);
  r = 50;
  speed = 1;
}

void draw() {
  float h = map((hour()%12), 0, 12, 0, 360);
  float m = map(minute(), 0, 60, 0, 360);
  float s = map(second(), 0, 60, 0, 360);
  float c = map(second(), 0, 60, 100, 255);
  background(c, 255-c, 0); 
  fill(0, 70); 
  ellipse(width/2, height/2, r, r);
  r = r + speed;
  if (r > 200 || r < 50) {
    speed = speed * -1;
  }
  //Hours
  pushMatrix();
  translate(width, height);
  rotate(radians(h));
  ellipse(0, -150, 25, 25);
  popMatrix();
  //Minutes
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(m));
  ellipse(0, -150, 25, 25);
  popMatrix();
  //Seconds
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(s));
  pushMatrix();
  translate(0, -150);
  triangle(0, -13, 13, 13, -13, 13);
  popMatrix();
  popMatrix();
}

