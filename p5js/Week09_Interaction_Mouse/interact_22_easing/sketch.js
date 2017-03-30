var x = 0;
var y = 0;
var easing = 0.07;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
}

function draw() {
  background(0);
  fill(255);
  var targetX = mouseX;
  x += (targetX - x) * easing;
  var targetY = mouseY;
  y += (targetY - y) * easing;
  ellipse(x, y, 40, 40);
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 20, 20);
}