PImage img;

void setup() {
  size(600, 400, P3D);
  background(0);
  noStroke();
}

void draw() {
  background(0);
  if (keyPressed && (key == 'a' || key == 'A')) {
  lights();
}
 
  pushMatrix();
  translate(mouseX, mouseY, -500);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, -PI, PI));
  box(400, 100, 400);
  translate(0, -200, 0);
  pointLight(255, 0, 0, width, height, 100);
  popMatrix();

  if (keyPressed && (key == 'b' || key == 'B')){
    lights();
    
  pushMatrix();
  translate(mouseX, mouseY, -500);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, -PI, PI));
  pointLight(255, 0, 0, width, height, 100);
  sphere(150);
  popMatrix();   
  
  } else {
    
  pushMatrix();
  translate(mouseX, mouseY, -500);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, -PI, PI));
  box(400, 100, 400);
  translate(0, -200, 0);
  sphere(150);
  directionalLight(0, 255, 0, 0, -1, 0);
  popMatrix();   
  spotLight(255, 0, 0, width, height, 400, 0, 0, -1, PI, 2);
}
}

