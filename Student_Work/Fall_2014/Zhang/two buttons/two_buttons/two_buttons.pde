Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 90;
int bh = 50;
int by2 = by + bh + 10;
int count = 1;
float speed=0;

void setup() {
  size(800,600);
  background(0);
  stroke(255);
}

void draw() {
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(255);
    brush = true;
  } else {
    fill(0);
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    fill(255);
    brush = false;
  } else {
    fill(0);
  }


  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
        fill(0);
    ellipse(mouseX, mouseY, 40, 40);
  translate(mouseX, mouseY);
    for(int i = 0; i < 6; i++) {
    strokeWeight(3);
      
    point(10, i * 20);
  }
   
   
  }

  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    fill(0); 
    strokeWeight(speed/4);
     line(mouseX, 10,10, pmouseY);
     
     

  }
   if (keyPressed == true) {
    save("frame" + count + ".png");
    delay(50);
    count++;
  }
  }



