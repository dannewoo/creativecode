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
      fill(0, 80);
      ellipse(x, y, circleSize * 2, circleSize * 2);
      fill(354, 88, 40);
      ellipse(x, y, circleSize * 1.5, circleSize * 1.5);
      fill(0, 80, random(20, 100));
      ellipse(x, y, circleSize, circleSize);
}         
}
} 
