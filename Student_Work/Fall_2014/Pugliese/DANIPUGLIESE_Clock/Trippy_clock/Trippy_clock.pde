

void setup() {
  size(600, 400);
  background(0);
  noStroke();
  rectMode(CENTER);
}

void draw() {
  float h = map((hour()%12), 0, 12, 0, 360);
  float m = map(minute(), 0, 60, 0, 360);
  float s = map(second(), 0, 60, 0, 360);
  float c = map(second(), 0, 60, 100, 255);
  background(c, 255-c, 130); 
  fill(0, 80); 
  ellipse(width/2, height/2, 20, 20);
  ellipse(width/2, height/2, 350, 350);
  //Hours
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(h));
  ellipse(0, -150, 25, 25);
  popMatrix();
  //Minutes
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(m));
  rect(0, -150, 25, 25);
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
  
  //random circles
  int opacity = 50;
  int circleD = 250;
int circleQ = 150;
frameRate(1);

  fill(0, 100, 82, 90);
ellipse(random(width),random(height), 80, 80);

fill(39, 100, 100, 50);
ellipse(random(width), random(height), circleD, circleD);

fill(276, 0, 13, 90);
ellipse(random(width - 2) + circleQ/2, random(height - 2), circleQ, circleQ);
println(frameRate);
}

