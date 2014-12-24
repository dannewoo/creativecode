PImage img;
float x = 30;
float s = 80;

void setup() {
  size(650, 400, P3D);
  img = loadImage("yarn.jpg");
  //noStroke();
}

void draw() {
if(mousePressed){
 translate(mouseX, mouseY, 40);
 rotate(x);
 beginShape();
  texture(img);
  vertex(-s, -s, 0, 0, 0);
  vertex(s, s-140, 0, s+200, s+20);
  vertex(0, s, 0, s+100, s+300);
  endShape();
 x = x + 0.1;
 }
}

