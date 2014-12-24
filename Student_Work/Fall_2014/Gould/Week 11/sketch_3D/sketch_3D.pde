void setup() {
  size(600, 400, P3D);
  background(0);
  noStroke();
}

void draw() {
  background(0);
  translate(width/4, height/2);
  pointLight(255, 0, 0, 300, -150, 0);
  directionalLight(0, 255, 0, 1, 0, 0);
  spotLight(0, 0, 255, 0, 40, 300, 0, -0.5, -0.5, PI/2, 2);
  rotateY(map(mouseX, 0, width, 0, PI));
  rotateX(map(mouseY, 0, height, 0, PI));
  sphere(150);
  translate(width/4, height/4);
  sphere(30);
  translate(width/4.5, height/4.5);
  sphere(50);
  translate(width/3, height/3);
  sphere(65);
}
