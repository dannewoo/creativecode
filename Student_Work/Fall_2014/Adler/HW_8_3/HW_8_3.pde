Boolean brush = true;
int bx = 25;
int by = 25;
int bw = 55;
int bh = 25;
int by2 = by + bh + 10;

float x= 0;
float y=0;
int d= 20;

int count=1;

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  noStroke();
  mouseX=-d;
  mouseY=-d;
}

void draw() {
  
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(255, 0, 0);
    brush = true;
  } else {
    fill(235, 36, 57);
    
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(255);
    brush = false;
  } else {
    fill(250);
  }
  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
     fill(235, 36, 57,5);
    ellipse(mouseX+d, mouseY, 50, 50);
    fill(240, 36, 57,5);
    ellipse(mouseX+100, mouseY, d, d);
    //fill(240, 20, 57,5);
    //ellipse(mouseX, mouseY+100, 50, 50);

  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    noFill();
    strokeWeight(3);
    stroke(255,10);
    rect(mouseX, mouseY, 50, 50);
    rect(mouseX, mouseY, 10, 10);
    
  }
  if (keyPressed) {
// only after everything is completed and drawn
save("image" + count + "png");
//delay(500);
//count ++;
}
}
