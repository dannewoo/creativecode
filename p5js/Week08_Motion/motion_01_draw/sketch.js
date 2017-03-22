function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

// Endless loop similar to a for loop
function draw() {
  fill(random(0, 360), 80, 100, random(100));
  ellipse(random(0, width), random(0, height), 40, 40);
}