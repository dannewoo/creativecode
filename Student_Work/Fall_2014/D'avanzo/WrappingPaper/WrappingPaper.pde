int circleSize = 30;

void setup() {
  size(700, 700);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  
   for(int x = 0; x < width; x += circleSize) {
   for(int y = 0; y < height; y += circleSize) {
      fill(0, 80);
      ellipse(x, y, circleSize * 2, circleSize * 2);
      fill(random(360), 100, 100);
      ellipse(x, y, circleSize * 1.5, circleSize * 1.5);
      fill(0, 80, random(20, 100));
      ellipse(x, y, circleSize, circleSize);
      fill(random(360), 100, 100);
      ellipse(x, y, circleSize * 0.5, circleSize * 0.5);
      ellipse(x, y, circleSize * .25, circleSize * .25);
      fill(random(360), 100, 100);
          }
  }
} 
