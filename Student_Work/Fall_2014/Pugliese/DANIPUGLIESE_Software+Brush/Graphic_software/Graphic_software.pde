Boolean brush = true;
int bx = 50;
int by = 50;
int bw = 50;
int bh = 50;
int by2 = by + bh + 10;
float d = 60;
float r = d/2;

void setup() {
  size(600, 400);
  background(0);
  noStroke();
  
}

void draw() {
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(0, 255, 251);
    brush = true;
  } else {
    fill(157, 245, 243);
  }
  rect(bx, by, bw, bh);
  
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(209, 181, 245);
    brush = false;
  } else {
    fill(111, 0, 255);
  }
  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
    fill(127, 255, 212, 50);
    translate(mouseX - 20, mouseY - 20);
    beginShape(TRIANGLE_FAN);
vertex(57.5, 50);
vertex(57.5, 15); 
vertex(92, 50); 
vertex(57.5, 85); 
vertex(22, 50); 
vertex(57.5, 15); 
endShape();
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    fill(111, 0, 255, 50);
    //rect(mouseX, mouseY, 40, 40);
    translate(mouseX - 20, mouseY - 20);
    beginShape(TRIANGLE_FAN);
vertex(57.5, 50);
vertex(57.5, 15); 
vertex(92, 50); 
vertex(57.5, 85); 
vertex(22, 50); 
vertex(57.5, 15); 
endShape();
  }
}
