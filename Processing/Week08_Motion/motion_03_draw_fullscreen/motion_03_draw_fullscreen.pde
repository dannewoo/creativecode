void setup() {
  size(displayWidth, displayHeight);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

// Endless loop similar to a for loop
void draw() {
  float randomsize = random(10, 50);
  fill(random(0, 360), 80, 100, random(100));
  ellipse(random(0, width), random(0, height), randomsize, randomsize);
}
