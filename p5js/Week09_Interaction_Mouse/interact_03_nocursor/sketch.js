var d = 50;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  mouseX = -d;
  mouseX = -d;
  noCursor();
}

function draw() {
  fill(255, 50);
  ellipse(mouseX, mouseY, d, d);
}