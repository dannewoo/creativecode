function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
}

function draw() {
  fill(255, 50);
  ellipse(mouseX, mouseY, 50, 50);
}