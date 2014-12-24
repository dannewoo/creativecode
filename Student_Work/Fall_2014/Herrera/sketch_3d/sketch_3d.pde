int textureRes = 32;
float[] textureX = new float[textureRes];
float[] textureY = new float[textureRes];

PImage img;
PImage img2;
PImage img3;
PImage bg;

void setup() {
  size(600, 400, P3D);
  img = loadImage("eye.jpg");
  img2 = loadImage("psy.jpg");
  img3 = loadImage("om.jpg");
   bg = loadImage("psy.jpg");
  background(0);
  float angle = 372.0 / textureRes;
  for(int i = 0; i < textureRes; i++){
    textureX[i] = cos(radians(i * angle));
    textureY[i] = sin(radians(i * angle));
    fill(255);
  
  }
  
  noStroke();
}

void draw() {
  background(bg);
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
  pushMatrix();
  fill(255);
  sphere(50);
  popMatrix();
  texture(img3);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
  pushMatrix();
  texture(img2);
  sphere(50);
  popMatrix();
  texture(img3);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
  pushMatrix();
  texture(img2);
  fill(0);
  sphere(50);
  popMatrix();
  texture(img3);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
}
