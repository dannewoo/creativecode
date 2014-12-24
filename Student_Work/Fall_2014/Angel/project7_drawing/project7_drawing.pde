Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 50;
int bh = 20;
int by2 = by + bh + 10;
int d = 5;

void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);
  background(176, 45, 76);
  cursor(HAND);
}

void draw() {
  // brown rectangle
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    noStroke();
    fill(26, 48, 76);
    brush = true;
  } else {
    noStroke();
    fill(26, 48, 56);
  }
  
  //yellow rectangle
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    noStroke();
    fill(50, 85, 100);
    brush = false;
  } else {
    fill(50, 85, 85);
  }
  
  //line pattern
  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
    translate(mouseX, mouseY);
    for(int i = 0; i < 10; i++) {
      stroke(26, 48, 76);
      strokeWeight(2);
      line(0, i * -10, 5, 5);
    }
  }
 
  //circle pattern
    if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    fill(50, 85, 100);
    noStroke();
    ellipse(mouseX + d, mouseY, d, d);
    ellipse(mouseX - d, mouseY, d, d);
    ellipse(mouseX, mouseY + d, d, d);
    ellipse(mouseX, mouseY - d, d, d);
  }
  
}
