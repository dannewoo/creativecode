int d = 50;
float origColor = random(360, 180);

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noFill();
  strokeWeight(0.75);
  stroke((origColor + 360), 180, 60, 80);
  mouseX = -d;
  mouseY = -d;
}

void draw() {
  if(mousePressed == true) {
    line(mouseX + d, mouseY, d, d);
//    line(mouseX - d, mouseY, d, d);
//    line(mouseX, mouseY + d, d/2, d/2);
//    line(mouseX, mouseY - d, d/2, d/2);
  }
  
}
