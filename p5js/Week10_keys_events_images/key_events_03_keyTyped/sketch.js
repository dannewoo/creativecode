function setup() {
  createCanvas(600, 400);
  rectMode(CENTER);
  background(0);
  noStroke();
  fill(255);
}

function draw() {
  
}

function keyTyped() {
  background(0);
  if (key == 'a' || key == 'A') {
    ellipse(width/2, height/2, 200, 200);
  } else {
    rect(width/2, height/2, 200, 200);
  }
}