function setup() {
  createCanvas(600, 400);
  background(0);
  stroke(255);
  strokeWeight(3);
  frameRate(10);
}

function draw() {
  background(0);
  line(mouseX, mouseY, pmouseX, pmouseY);
}