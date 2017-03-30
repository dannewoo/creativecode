function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
}

function draw() {
  background(0);
  fill(255);
  if (mouseX < width/2) {
    rect(0, 0, width/2, height);
  } else {
    rect(width/2, 0, width/2, height);
  }
}