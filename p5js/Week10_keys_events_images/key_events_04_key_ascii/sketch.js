var angle = 0;

function setup() {
  createCanvas(600, 400);
  rectMode(CENTER);
  background(0);
  noStroke();
  fill(255);
}

function draw() {
  background(0);
  // ASCII Table (www.asciitable.com)
  // ASCII 49 - 57 is 1 - 9 on your keyboard
  if (keyIsPressed && (keyCode >= 49 && keyCode <= 57)) {
    angle = map(key, 49, 57, 0, 360);
  }
  translate(width/2, height/2);
  rotate(radians(angle));
  rect(0, -100, 20, 20);
}