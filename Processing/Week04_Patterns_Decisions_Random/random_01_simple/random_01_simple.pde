// random(100) gives us a float between 0 and 100
float rectSize = random(100);

void setup() {
  size(400, 400);
  colorMode(HSB, 360, 100, 100);
  float x = random(width - rectSize);
  float y = random(height - rectSize);
  // random(360) gives us a float between 0 and 360
  background(random(360), 100, 100);
  
  noStroke();
  fill(random(360), 100, 100);
  rect(x, y, rectSize, rectSize);
}
