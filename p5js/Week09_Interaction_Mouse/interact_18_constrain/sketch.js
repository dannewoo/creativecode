var x, y;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
}

function draw() {
  x = constrain(mouseX, 100, 500);
  y = constrain(mouseY, 100, 300);
}

function mouseDragged() {
  fill(255, 0, 0);
  ellipse(x, y, 20, 20);
}