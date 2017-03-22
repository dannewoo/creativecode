function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  frameRate(5);
  colorMode(HSB, 360, 100, 100, 100);
}

function draw() {
  background(360);
  var randomsize = random(10, 50);
  fill(random(0, 360), 80, 100, random(100));
  ellipse(random(0, width), random(0, height), randomsize, randomsize);
}