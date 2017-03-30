var d = 50;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  mouseX = -d;
  mouseY = -d;
}

function draw() {
  fill(255, 50);
  ellipse(mouseX, mouseY, d, d);
}