Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 50;
int bh = 20;
int by2 = by + bh + 10;
int count = 1;

void setup() {
  size(1000, 700);
  background(255);
  noStroke();
}

void draw() {
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(50, 150, 30);
    brush = true;
  } else {
    fill(25, 100, 360);
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(25, 200, 360);
    brush = false;
  } else {
    fill(100, 250, 30);
  }
  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
    fill(random(30, 70), random(0, 360), random(0, 360), 10);
    rect(mouseX, mouseY, 250, 250);
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    fill(random(0, 360), random(0, 360), random(0, 360), 100);
    ellipse(mouseX, mouseY, 35, 35);
  }

}
