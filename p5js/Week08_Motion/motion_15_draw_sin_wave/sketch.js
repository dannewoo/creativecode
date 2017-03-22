var angle = 0;
var xSpeed = 2;
var d = 40;
var x = -d;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
}

function draw() {
  background(255);
  x = x + xSpeed;
  fill(0);
  var y = sin(angle) * 150;
  ellipse(x, y + height/2, d, d);
  angle += 0.03;
  if (x > width + 16) {
    x = -d;
  }
}