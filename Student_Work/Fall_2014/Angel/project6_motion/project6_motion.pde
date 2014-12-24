int d = 10;

void setup () {
  size(600, 430);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  frameRate(2);
} 
void draw() {
background(0);
  for (int x = 0; x < 650; x += 35) {
    for (int y = 15; y < 450; y+= 50) {
      fill (random(70,360), random(50,100), random(50,100));
      ellipse(x, y, d, d + 1);
    }
  }
}

