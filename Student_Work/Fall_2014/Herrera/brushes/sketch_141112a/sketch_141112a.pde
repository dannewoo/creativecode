Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 50;
int bh = 20;
int by2 = by + bh + 10;

void setup() {
  size(600, 400);
  background(255);
  noStroke();
}

void draw() {
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(255, 0, 0);
    brush = true;
  } else {
    fill(100, 0, 0);
  }
noStroke();
fill(255,0,0);
beginShape();
vertex(50, 15); 
bezierVertex(50, -5, 90, 5, 50, 40); 
vertex(50, 15); 
bezierVertex(50, -5, 10, 5, 50, 40); 
endShape();
;
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(255);
    brush = false;
  } else {
    fill(100);
  }
  
  pushMatrix();
  translate(0, 40);
noStroke();
fill(0,0,0);
beginShape();
vertex(50, 15); 
bezierVertex(50, -5, 90, 5, 50, 40); 
vertex(50, 15); 
bezierVertex(50, -5, 10, 5, 50, 40); 
endShape();
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
    fill(100, 0, 0, 100);
    ellipse(mouseX, mouseY, 100, 100);
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    fill(0, 50);
    ellipse(mouseX, mouseY, 40, 40);
  }
popMatrix();
}
