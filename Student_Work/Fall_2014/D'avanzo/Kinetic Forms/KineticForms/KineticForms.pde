int circleSize = 25;

void setup() {
  size(500, 500); 
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background(360);
  frameRate(4);
} 
  
void draw() {  
   for(int x = 0; x < width + circleSize; x += circleSize) {
   for(int y = 0; y < height + circleSize; y += circleSize) {
      fill(random(0, 360), 80, 100, random(100));
      ellipse(x, y, circleSize * 2, circleSize * 2);
      fill(random(0, 360), 50, 100, random(100));
      ellipse(x, y, circleSize * 1.5, circleSize * 1.5);
      fill(random(0, 360), 20, 100, random(200));
      ellipse(x, y, circleSize, circleSize);
}         
}
} 
