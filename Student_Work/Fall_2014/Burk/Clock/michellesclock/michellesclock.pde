int origColor = 30;

void setup() {
  size(600, 400);
  background(255);  
  colorMode(HSB, 360, 100, 100);
  noFill();
  rectMode(CENTER);
}

void draw() {
  float h = map((hour()%12), 0, 12, 0, 360);
  float m = map(minute(), 0, 60, 0, 360);
  float s = map(second(), 0, 60, 0, 360);
  float c = map(second(), 0, 20, 300, 300);
  background(360);  
  stroke(origColor, 80, 80);
  rect(width/2, height/2, 20, 20);
  rect(width/2, height/2, 350, 350);
  //Hours
  pushMatrix();
  translate(width/2, height/2);
  stroke((origColor + 90) % 360, 80, 80);
  rotate(radians(h));
  ellipse(0, -150, 25, 25);
  popMatrix();
  //Minutes
  pushMatrix();
  translate(width/2, height/2);
  stroke((origColor + 180) % 360, 80, 80);
  rotate(radians(m));
  rect(0, -150, 25, 25);
  popMatrix();
  //Seconds
  pushMatrix();
  translate(width/2, height/2);
  stroke((origColor + 270) % 360, 80, 80);
  rotate(radians(s));
  pushMatrix();
  translate(0, -150);
  triangle(0, -13, 13, 13, -13, 13);
  popMatrix();
  popMatrix();
}
