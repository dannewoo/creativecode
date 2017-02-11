// random(100) gives us a float between 20 and 100
float rectSize = random(20, 100);

void setup() {
  size(400, 400);
  colorMode(HSB, 360, 100, 100);
  float x = random(width - rectSize);
  float y = random(height - rectSize);
  // random(270, 360) gives us a float between 270 and 360
  background(random(270, 360), 100, 100);
  
  noStroke();
  // random(90, 180) gives us a float between 90 and 180
  fill(random(90, 180), 100, 100);
  rect(x, y, rectSize, rectSize);
  
  // Prints the random value to the console.
  println("Rect Size: " + rectSize);
}
