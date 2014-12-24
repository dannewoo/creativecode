Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 20;
int bh = 20;
int by2 = by + bh + 10;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(0);
    brush = true;
  } else {
    fill(360, 60, 60);
  }
  ellipse(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(0, 80, 100);
    brush = false;
  } else {
    fill(360, 60, 60);
  }
  ellipse(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
    fill(random(360), 100, 60, 60);
    ellipse(mouseX, mouseY, 15, 15);
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    fill(random(360), 100, 100, 100);
    ellipse(mouseX, mouseY, 30, 30);
  }
}
