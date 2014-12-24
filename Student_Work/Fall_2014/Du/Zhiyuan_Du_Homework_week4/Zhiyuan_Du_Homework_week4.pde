int rectSize = 80;

void setup() {
  size(600, 400);
  smooth();
  background(0);
  noStroke();
  
  
  for(int x = 0; x < width; x += rectSize) {
    for(int y = 0; y < height; y += rectSize) {
      fill(255);
      rect(x, y, rectSize * 1.2, rectSize * 1.2);
      fill(0);
      rect(x+25, y+25, rectSize * 0.8, rectSize * 0.8);
      fill(255);
      rect(x+25, y+25, rectSize * 0.4, rectSize * 0.4);
      fill(0);
      rect(x+25, y+25, rectSize * 0.1, rectSize * 0.1);
    }
  }
}
