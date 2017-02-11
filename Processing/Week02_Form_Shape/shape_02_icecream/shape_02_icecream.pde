void setup() {
  size(400, 400);
  background(0);
  noStroke();
  fill(255);
  ellipse(width/2, height/2 - 30, 50, 50);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI);
  triangle(0, -65, 25, 25, -25, 25);
  popMatrix();
  
  fill(0);
  rectMode(CENTER);
  rect(width/2, height/2 - 25, 100, 2);
}
