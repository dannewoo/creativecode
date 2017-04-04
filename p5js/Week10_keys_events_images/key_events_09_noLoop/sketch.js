var frame = 0;
var d = 100;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
}

function draw() {
  if (frame > 100) {
    noLoop();
  } else {
    fill(255, 0, 0, 50);
    ellipse(random(width), random(height), d, d);
    frame++;
  }
}

function mousePressed() {
  frame = 0;
  background(255);
  loop();
}