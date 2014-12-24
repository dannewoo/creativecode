int maxCol = 12;
int maxRow = 10;
int pageMargin = 5;
float origColor = random(180, 360);     
float cdir = 2;  
float b = 180;
float w = 360;

void setup () {
  size(625, 400);
  colorMode(HSB, 360, 100, 100);
  background(48, 8, 100);
  noStroke();
}

void draw() {
  origColor = origColor + cdir;
  if (origColor < b || origColor > w) {
    cdir *= -1;
  }
  
  float xSpacing = pageMargin*10;
  float ySpacing = pageMargin*10;
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      pushMatrix();
      translate(x*xSpacing, y*ySpacing);
      if (x == 2 && y == 6) {
        fill(origColor, 50, 100);
         } else if (x == 5 && y == 3) {
           fill(origColor, 50, 100);
         } else if (x == 8 && y == 5) {
           fill(origColor, 50, 100);
         } else if (x == 7 && y == 1) {
           fill(origColor, 50, 100);
         } else {
          fill(origColor, 80, 80, 60);
         }
          quad(25, 0, 50, 0, 25, 50, 0, 50); 
        
          fill((origColor + 180) % 360, 80, 80);
          quad(25, 0, 50, 0, 75, 50, 50, 50);
          println("Original Color: " + origColor + " | " + "Complementary Color: " + (origColor + 180) % 360);
      popMatrix(); 
    }
  }
}
