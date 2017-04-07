function setup() {
  createCanvas(600, 400);
  rectMode(CENTER);
  background(0);
  noStroke();
  fill(255);
}

function draw() {
  background(0);
  if (keyIsPressed && (key == 'a' || key == 'A')) {
    ellipse(width/2, height/2, 200, 200);
  } else {
    rect(width/2, height/2, 200, 200);
  }
}