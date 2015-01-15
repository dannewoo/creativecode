import processing.pdf.*;

Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 20;
int bh = 20;
int by2 = by + bh + 10;

void setup() {
  size(800, 500);
  beginRecord(PDF, "
  //colorMode(HSB, 360, 100, 100, 100);
  background(255);

}

void draw() {
float x = constrain(mouseX, 100, 800);
float y = constrain(mouseY, 0, 500);


  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(255, 0, 0);
    brush = true;
  } else {
    fill(100, 0, 0);
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(255);
    brush = false;
  } else {
    fill(100);
  }
  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
  stroke(255, 50);
  strokeWeight(2);
  fill(mouseX, mouseY, 200, 40);
  ellipse(mouseX, mouseY, 100, 100);
  }
  
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
  stroke(360, 50);
  strokeWeight(2);
  fill(mouseX, mouseY, 200, 40);
  ellipse(mouseX, mouseY, 100, 100);
  }

//if (mousePressed == true){
//  stroke(360, 50);
//  strokeWeight(2);
//  fill(mouseX, mouseY, 200, 40);
//  ellipse(mouseX, mouseY, 100, 100);
//}



}
