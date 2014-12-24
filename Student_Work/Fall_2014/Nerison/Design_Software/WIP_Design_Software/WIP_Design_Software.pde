Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 50;
int bh = 20;
int by2 = by + bh + 10;
int count = 1;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(600, 400);
  background(0, 0, 100);
  noStroke();
  frameRate(15);
}

void draw() {
    float lineLength = random(20, 45);



  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(105, 80, 80);
    brush = true;
  } else {
    fill(15, 100, 90);
  }

  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(105, 80, 80);
    brush = false;
  } else {
    fill(15, 100, 100);
  }
  

stroke(250, 100, 5);  
  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
    line(pmouseX, pmouseY + lineLength, mouseX, mouseY - lineLength);
  }
  
  
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    line(pmouseX + lineLength, pmouseY, mouseX - lineLength, mouseY);  
  }
  if (keyPressed) {
save("doodle.png" + count + ".png");
delay(500);
count ++ ;}

if (keyPressed) 
{background(0, 0, 100);}
  
}


