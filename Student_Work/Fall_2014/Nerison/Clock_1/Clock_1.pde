void setup() {
  size(500, 500);
  background(255);
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);
}

void draw() {
  
  float h = map((hour()%12), 0, 12, 0, 360);
  float m = map(minute(), 0, 60, 0, 360);
  float s = map(second(), 0, 60, 0, 360);
  float c = map(minute(), 0, 60, 0, 360);
  float sat = map((hour()%12), 0, 12, 0, 100);
  float minHand = map(minute(), 0, 60, 0, TWO_PI) - HALF_PI;
  float hrHand = map((hour()%12), 0, 12, 0, TWO_PI) - HALF_PI;
  
  background(0, 0, 100);
  //background(c, 255-c, 0); 
  noStroke();
  fill(c, 100 + sat, 100); 
  ellipse(width/2, height/2 - 50, 250, 250);

//Seconds
  pushMatrix();
  translate(width/2, height/2 - 50);
  rotate(radians(s));
  pushMatrix();
  translate(0, -150);
  ellipse(0, 0, 20, 20);
  popMatrix();
  popMatrix();

stroke(0, 0, 100);
//hands
  strokeWeight(2);
  line(width/2, height/2 - 50, cos(minHand) * 250 + width/2, sin(minHand) * 250 + height/2 - 50);
  strokeWeight(10);
  line(width/2, height/2 - 50, cos(hrHand) * 250 - width/2, sin(hrHand) * 250 + height/2 - 50);

}
