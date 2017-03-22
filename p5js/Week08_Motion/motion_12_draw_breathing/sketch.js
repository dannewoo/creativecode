var r, speed;

function setup() {
  createCanvas(600, 400);
  noStroke();
  ellipseMode(CENTER);
  r = 50;
  speed = 1;
}

function draw() {
  background(255);
  fill(0);
  ellipse(width/2, height/2, r, r);
  r = r + speed;
  if (r > 200 || r < 50) {
    speed = speed * -1;
  }
}