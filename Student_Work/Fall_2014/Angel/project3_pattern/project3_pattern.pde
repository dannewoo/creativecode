void setup () {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);
  background(81, 40, 71);
  noStroke();
  
  for (int x = 0; x < 650; x += 35) {
    for (int y = 15; y < 450; y+= 50) {
      if( x == 0 || x == 105 || x == 210 || x == 315 || x == 420 || x == 525) {
        fill (76, 23, 82);
      }else if (x == 35 || x == 140 || x == 245 || x == 350 || x == 455 || x == 560) {
        fill(63, 11, 97);
      }else {
        fill(random(290, 360), 81, 63);
      }
      ellipse(x, y, 9, 10);
      ellipse(x+15, y+25, 9, 10);
    }
  } 
}
