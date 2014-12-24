Boolean brush = true;
int rx = 20;
int ry = 20 + 460;
int rw = 50 + 20;
int rh = 20 + 10;
int ry2 = ry + rh + 10;

void setup() {
  size(570, 570);
  background(40);
  noStroke();
  cursor(CROSS);
}
void draw() {
//Area of clickable brush changes are not in the right place.
  if((mouseX > rx) && (mouseX < rx + rw) && 
  (mouseY > ry) && (mouseY < ry + rh) && 
  mousePressed == true) {
    fill(0, 255, 0);
    brush = true;
  } else {
    fill(0, 0, 110);
  }
  rect(rx, ry, rw, rh);
  
  if ((mouseX > rx) && (mouseX < rx + rw) && 
  (mouseY > ry2) && (mouseY < ry2 + rh) && 
  mousePressed == true) {
    fill(0, 0, 255);
    brush = false;
  } else {
    fill(255, 100, 0);
  }
  rect(rx, ry2, rw, rh);
  
  if(((mouseX < rx) || (mouseX > rx + rw) || 
  (mouseY < ry) || (mouseY > ry + rh)) && brush == true 
  && mousePressed == true) {
    fill(95, 0, 95);
    ellipse(mouseX, mouseY, 60, 60);
  }
  if(((mouseX < rx) || (mouseX > rx + rw) || 
  (mouseY < ry2) || (mouseY > ry2 + rh)) && brush == false 
  && mousePressed == true) {
    fill(0, 255, 255, 10.5);
    ellipse(mouseX, mouseY, 120, 120);
  }
  saveFrame("Custom_Double_Brushes.png");
}
