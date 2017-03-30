var d = 80;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
}

function draw() {
  background(0);
  fill(255);
  var normX = mouseX / width;
  ellipse(mouseX, 100, d, d);
  ellipse(pow(normX, 4) * width, 200, d, d);
  ellipse(pow(normX, 8) * width, 300, d, d);
}