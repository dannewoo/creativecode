function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  fill(255, 0, 0);
}

function draw() {
  background(0);
  var d = dist(width/2, height/2, mouseX, mouseY);
  ellipse(width/2, height/2, d*2, d*2);
}