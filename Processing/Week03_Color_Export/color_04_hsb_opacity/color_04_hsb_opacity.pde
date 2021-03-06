int circleD = 250;
int opacity = 50;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  rectMode(CENTER);
  
  fill(0, 100, 100, 50);
  ellipse(width/2 - circleD/2, height/2, circleD, circleD);
  fill(120, 100, 100, 50);
  ellipse(width/2, height/2, circleD, circleD);
  fill(240, 100, 100, 50);
  ellipse(width/2 + circleD/2, height/2, circleD, circleD);
}
