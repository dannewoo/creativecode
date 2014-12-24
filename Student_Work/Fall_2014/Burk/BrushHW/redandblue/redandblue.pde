Boolean brush = true;
int bx = 20;
int by = 20;
int bw = 50;
int bh = 50;
int by2 = by + bh + 10;
float speed = 5;
float easing = 0.05;
int origColor = 30;
int count = 1;

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
}

void draw() {
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    noStroke();
    fill(240, 50, 100);
    brush = true;
  } else {
    noStroke();
    fill(240, 50, 100);
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
    noStroke();
    fill(240, 50, 100);
    brush = false;
  } else {
    noStroke();
    fill(360, 50, 100);
  }
  rect(bx, by2, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mousePressed == true) {
    float target = dist(mouseX, mouseY, pmouseX, pmouseY);
    speed += (target - speed) * easing;
    float c = map(speed, 0, 100, 0, 180);
    stroke(240-c, 50, 100, 70);
      if(mousePressed == true){
      strokeWeight(0.75);
      noFill();
      rect(mouseX, mouseY, 125, 125);
    }
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mousePressed == true) {
    float target = dist(mouseX, mouseY, pmouseX, pmouseY);
    speed += (target - speed) * easing;
    float c = map(speed, 0, 100, 0, 180);
    stroke(360-c, 50, 100, 70);
      if(mousePressed == true){
      strokeWeight(0.75);
      noFill();
      rect(mouseX, mouseY, 125, 125);
    }
  }
  if (keyPressed == true) {
    save("frame" + count + ".png");
    delay(500);
    count++;
  }
}
