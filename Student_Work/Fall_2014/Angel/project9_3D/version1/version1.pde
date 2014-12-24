PImage img;
float x = 30;
float s = 100;

void setup() {
  size(650, 400, P3D);
  img = loadImage("yarn.jpg");
  noStroke();
}

void draw() {
  background(0);
  translate(width/2, height/2, 0);
  rotateY(map(mouseX, 0, width, 0, PI));
  rotateX(map(mouseY, 0, height, 0, PI));
  beginShape();
  texture(img);
  vertex(-s, -s, 0, 0, 0);
  vertex(s, s-140, 0, s+200, s+20);
  vertex(0, s, 0, s+100, s+300);
  endShape(); 
}





