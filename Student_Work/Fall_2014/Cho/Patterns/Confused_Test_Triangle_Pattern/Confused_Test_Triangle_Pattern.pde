int circleSize = 10;

void setup() {
  size(600, 400);
  background(0, 20, 100);
  strokeWeight(.3);
  stroke(255);

  translate(circleSize/4, circleSize/2);
  for(int x = 0; x < width; x += circleSize) {
    for(int y = 0; y < height; y += circleSize) {
      fill(92, 126, 126);
      ellipse(x, y, circleSize * 1, circleSize * 1);
      fill(0, 30, 100);
      ellipse(x, y, circleSize * 0.5, circleSize * 0.5);
      fill(0, 126, 126);
      ellipse(x, y, circleSize * 0.2, circleSize * 0.2);
      
      pushMatrix();
      fill(110, 0, 0);
      triangle(10, 60, 10, 20, 80, 75);
      popMatrix();
  
    }
  }
}
