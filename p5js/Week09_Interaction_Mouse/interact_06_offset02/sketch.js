var d = 40;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  mouseX = -d;
  mouseY = -d;
}

function draw() {
  background(0);
  fill(255);
  ellipse(mouseX, mouseY, d, d);
  ellipse(mouseX/2, mouseY, d, d);
  ellipse(mouseX*2, mouseY, d, d);
}