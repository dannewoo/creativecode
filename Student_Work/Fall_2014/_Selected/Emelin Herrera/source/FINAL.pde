import ddf.minim.*;
Minim minim;
AudioSample s01;
int c;

import gifAnimation.*;
Gif myAnimation;
Gif myAnimation2;

int textureRes = 32;
float[] textureX = new float[textureRes];
float[] textureY = new float[textureRes];
float a = 0;
PImage img;
PImage img2;
PImage img3;
PImage bg;

void setup() {
  size(1200, 800, P3D);
   myAnimation = new Gif(this, "galaxy.gif");
   myAnimation2 = new Gif(this, "space.gif");
myAnimation.play();
  minim = new Minim(this);
  s01 = minim.loadSample("01.mp3");
  img = loadImage("eye.jpg");
  img2 = loadImage("psy.jpg");
  img3 = loadImage("om.jpg");
   bg = loadImage("space.gif");
   
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

//  image(myAnimation, 0, 0);
  background(bg);
  frameRate(28);
  
  {
  if (mousePressed == true) {
     c = 36; 
    s01.trigger();
  } 
  }
  
  //vortex 1
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
   a = a + 0.01;
  rotateX(a);
  pushMatrix();
  fill(255);
  a = a + 0.01;
  rotateX(a);
  sphere(50);
  popMatrix();
  texture(myAnimation);
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
  texture(myAnimation);
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
  texture(myAnimation);
  fill(0);
  sphere(50);
  popMatrix();
  texture(myAnimation);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
  
  //vortex 2
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
   a = a + 0.01;
  rotateX(a);
  pushMatrix();
  fill(255);
  a = a + 0.01;
  rotateX(a);
  sphere(50);
  popMatrix();
  texture(myAnimation);
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
  texture(myAnimation);
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
  texture(myAnimation);
  fill(0);
  sphere(50);
  popMatrix();
  texture(myAnimation);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
  
  //vortex 3
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
   a = a + 0.01;
  rotateX(a);
  pushMatrix();
  fill(255);
  a = a + 0.01;
  rotateX(a);
  sphere(50);
  popMatrix();
  texture(myAnimation);
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
  texture(myAnimation);
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
  texture(myAnimation);
  fill(0);
  sphere(50);
  popMatrix();
  texture(myAnimation);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
  
  //vortex 4
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
   a = a + 0.01;
  rotateX(a);
  pushMatrix();
  fill(255);
  a = a + 0.01;
  rotateX(a);
  sphere(50);
  popMatrix();
  texture(myAnimation);
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
  texture(myAnimation);
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
  texture(myAnimation);
  fill(0);
  sphere(50);
  popMatrix();
  texture(myAnimation);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
  
  //vortex 5
  //vortex 4
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, -PI, PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
   a = a + 0.01;
  rotateX(a);
  pushMatrix();
  fill(255);
  a = a + 0.01;
  rotateX(a);
  sphere(50);
  popMatrix();
  texture(myAnimation);
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
  texture(myAnimation);
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
  texture(myAnimation);
  fill(0);
  sphere(50);
  popMatrix();
  texture(myAnimation);
  for(int i = 0; i < textureRes; i++){
    float x = textureX[i] * 100;
    float z = textureY[i] * 100;
    float u = img.width / textureRes * i;
    vertex(x, -100, z, u, 0);
    vertex(x, 100, z, u, img.height);
  }
  endShape();
  
}

