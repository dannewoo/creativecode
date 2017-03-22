var w = 150;
var h = 75;
var x = -w;
var speed = 3;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

function draw() {
  background(360);
  // Increase the location of x by speed every frame
  x = x + speed;
  fill(0);
  if (x > width) {
    // If the object reaches either edge, set location back off screen to the left.
    x = -w;
  }

  // Display rect at x location
  fill(0);
  rect(x, height/2 - h/2, w, h);
}