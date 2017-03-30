var d = 20;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  mouseX = -d*2;
  mouseY = -d*2;
}

function draw() {
  fill(255, 50);
  ellipse(mouseX + d, mouseY, d, d);
  ellipse(mouseX - d, mouseY, d, d);
  ellipse(mouseX, mouseY + d, d, d);
  ellipse(mouseX, mouseY - d, d, d);
}