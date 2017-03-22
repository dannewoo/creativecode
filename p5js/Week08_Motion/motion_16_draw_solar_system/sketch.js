var r1, r2, speed1, speed2;

function setup() {
  createCanvas(600, 400);
  noStroke();
  ellipseMode(CENTER);
  r1 = 0;
  r2 = 0;
  speed1 = 2;
  speed2 = 4;
}

function draw() {
  background(255);
  fill(0);
  
  push();
  translate(width/2, height/2);
  rotate(radians(r1));
  ellipse(0, -150, 30, 30);
  translate(0, -150);
  rotate(radians(-r1));
  rotate(radians(r2));
  ellipse(0, -30, 10, 10);
  pop();
  
  fill(0);
  ellipse(width/2, height/2, 100, 100);
  
  r1 = r1 + speed1;
  r2 = r2 + speed2;
}