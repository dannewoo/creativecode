
void setup() {
  size(displayWidth , displayHeight);
  noStroke();
 colorMode(HSB, 360, 100, 100, 100);
   background(0,0,100);
}

void draw(){}



void mousePressed() {
    float i = random(59 , 200);
  if (mouseButton == LEFT) {
  fill(random(0, 360 ), 80, 100, 100);
  rectMode(CENTER);
 rect(mouseX,mouseY,i,i);
  }
  else if (mouseButton == RIGHT) {
  fill(random(0, 360 ), 80, 100, 100);
 ellipse(mouseX,mouseY,i,i);
  }
}

void keyPressed() {
  background(0,0,100);
}
