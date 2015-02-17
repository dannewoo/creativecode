void setup() {
  size(600, 400);
  background(255);
  noStroke();
  colorMode(HSB, 100);
  rectMode(CENTER);
  
  for (int i = 0; i < 100; i++) {
    for (int j = 0; j < 100; j++) {
      fill(i, j, 100);
      rect(width/100 * i, height/100 * j, width/100, height/100);
    }
  }
}
