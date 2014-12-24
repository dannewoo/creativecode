int circleSize = 80;

void setup() {
  size(600, 400);
  smooth();
  background(0);
  noStroke();
  colorMode(HSB, 360, 100, 100);

  translate(circleSize/4, circleSize/2);
  for(int x = 0; x < width; x += circleSize) {
    for(int y = 0; y < height; y += circleSize) {
      stroke(random(121, 240), 70, 100);
      ellipse(x, y, circleSize * 0.8, circleSize * 0.8);
      fill(random(0, 120), 70, 100);
      ellipse(x, y, circleSize * 0.6, circleSize * 0.6);
      fill(random(241, 360), 70, 100);
      ellipse(x, y, circleSize * 0.3, circleSize * 0.3);
    }
  }
}
