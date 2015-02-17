int circleD = 250;
int opacity = 50;

void setup() {
  size(600, 400);
  colorMode(RGB, 255, 255, 255, 100);
  noStroke();
  background(255);
  rectMode(CENTER);
  
  fill(255, 0, 0, opacity);
  ellipse(width/2 - circleD/2, height/2, circleD, circleD);
  fill(0, 255, 0, opacity);
  ellipse(width/2, height/2, circleD, circleD);
  fill(0, 0, 255, opacity);
  ellipse(width/2 + circleD/2, height/2, circleD, circleD);
}
