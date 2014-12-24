Ground grnd;

void setup(){
  size(1600, 900,P3D);
  colorMode(HSB, 360, 100, 100,100);
  background(230, 80, 15);
  smooth(8);
//  strokeWeight(0.3);
  noStroke();

  grnd = new Ground(100, 30, 15);
  grnd.generate();
}

float howFar = 200;
float angle, xPos, zPos;

void draw(){
  background(230, 80, 15);
  
  angle = map(mouseX, 0, width, 0, TWO_PI);
  xPos = howFar * cos(angle);
  zPos = howFar * sin(angle);
  
  directionalLight(0, 0, 100, 0, 1, 1);
  camera(xPos, -200, zPos, 0, 0, 0, 0, 1, 0);
  sphereDetail(50);
  shininess(5);
  
  //body
  pushMatrix();
  fill(0, 0, 100);
  sphere(50);
  popMatrix();
  
  pushMatrix();
  fill(0, 0, 100);
  translate(0, -65, 0);
  sphere(30);
  popMatrix();
  
  pushMatrix();
  fill(0, 0, 100);
  translate(0, -108, 0);
  sphere(20);
  popMatrix();
  
  //eyes
  pushMatrix();
  fill(0, 0, 70);
  translate(-6, -110, -17);
  sphere(3);
  popMatrix();
  
  pushMatrix();
  fill(0, 0, 100);
  translate(6, -110, -17);
  sphere(3);
  popMatrix();  
  
  //nose
  pushMatrix();
  translate(0, -106, -18);
  fill(0, 100, 100);
  sphere(3);
  popMatrix();  
  
  grnd.spawn();
  
}
