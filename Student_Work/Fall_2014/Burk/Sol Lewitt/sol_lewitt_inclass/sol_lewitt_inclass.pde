int maxCol = 6;
int maxRow = 1;
int rectD = 70;

void setup () {
  size(600, 400);
  background(0);
  noFill();
  stroke(255);
  
  int xSpace = width/maxCol;
  int ySpace = height/maxCol;
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      pushMatrix();
      translate(width/2 - 50, height/2 - 100);
      rotate(random(HALF_PI));
      rect(50, 60, rectD, rectD); 
      popMatrix(); 
    } 
  }
}
