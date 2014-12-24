PVector camPos;
PVector focusPoint;
float viewAngle = PI/2;

int amountOfObjects = 400;
int yInterval = 25;
int fullRevInterval = 8750;
int widthOfSpiral = 600;
int sphereSize = 10;
PVector[] xShape = new PVector[amountOfObjects];


void setup() {
  size(1100/2, 1700/2, P3D);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 100);
  smooth(8);
  
  int rotRadius = 1600;
  int rotAngle = 90;
  float rotateCamX = rotRadius * cos(radians(rotAngle));
  float rotateCamZ = rotRadius * sin(radians(rotAngle));
  camPos = new PVector(rotateCamX, 0, rotateCamZ);
  focusPoint = new PVector(0, -1300, 0);
  
  
  float cameraZ = ((height/2.0) / tan(PI*1.0/6.0));
  float aspx = width;
  float aspy = height;
  float asp = aspx/aspy;
  camera(camPos.x, camPos.y, camPos.z, focusPoint.x, focusPoint.y, focusPoint.z, 0.0, 1.0, 0.0);
  perspective(viewAngle, asp, cameraZ/10.0, cameraZ*1000.0);
  directionalLight(0, 0, 50, 0, -1, -1);
  ambientLight(0, 0, 100);
  
  //axis(500);
  //pushMatrix();
  //translate(0, -5000, 0);
  //grid(800, 100, 50, 0, 0);
  //popMatrix();
  
  float posY;
  float posX;
  float posZ;
  float PISTEP = TWO_PI/fullRevInterval;
  float widthI;
  float colorI;
  for (int i = 0; i < amountOfObjects; i++){
    widthI = map(i, 1, amountOfObjects, widthOfSpiral, 0);
    posX = widthI * cos((i * yInterval) * PISTEP);
    posZ = widthI * sin((i * yInterval) * PISTEP);
    posY = -i * yInterval;
    xShape[i] = new PVector(posX, posY, posZ);
  }
  
  float adaptiveStrokeWeight = map(width, 0, 3300, 0, 1);
  strokeWeight(adaptiveStrokeWeight);
  for(int i = 0; i < amountOfObjects; i++){
    colorI = map(i, 0, amountOfObjects, 0, 360);
    pushMatrix();
    stroke(colorI, 80, 100);
    line(xShape[i].x, xShape[i].y, xShape[i].z, -xShape[i].x, xShape[i].y, -xShape[i].z);
    if(i < (amountOfObjects - 1)){
      line(xShape[i].x, xShape[i].y, xShape[i].z, xShape[i+1].x, xShape[i+1].y, xShape[i+1].z);
      line(-xShape[i].x, xShape[i].y, -xShape[i].z, -xShape[i+1].x, xShape[i+1].y, -xShape[i+1].z);
    }
    popMatrix();
  }

  noStroke();
  //sphereDetail(24,12);
  shininess(1.0);
  for(int i = 0; i < amountOfObjects; i++){
    colorI = map(i, 0, amountOfObjects, 0, 360);
    pushMatrix();
    fill(colorI, 80, 100);
    translate(xShape[i].x, xShape[i].y, xShape[i].z);
    sphere(sphereSize);
    popMatrix();
    pushMatrix();
    fill(colorI, 80, 100);
    translate(-xShape[i].x, xShape[i].y, -xShape[i].z);
    sphere(sphereSize);
    popMatrix();
  }
  
  //filter(BLUR,1);
  saveFrame("saved1.png");
}

void grid(int gridRange, float gridSpacing, float showXZ, float showXY, float showZY) {
  strokeWeight(0.5);
  stroke(0, 0, 50, showXZ);
  for (int i = -gridRange; i <= gridRange; i += gridSpacing){
    line(i, 0, -gridRange, i, 0, gridRange);
    line(-gridRange, 0, i, gridRange, 0, i);
  }
  stroke(0, 0, 0, showXY);
  for (int i = -gridRange; i <= gridRange; i += gridSpacing){
    line(i, -gridRange, 0, i, gridRange, 0);
    line(-gridRange, i, 0, gridRange, i, 0);
  }
  stroke(0, 0, 0, showZY);
  for (int i = -gridRange; i <= gridRange; i += gridSpacing){
    line(0, -gridRange, i, 0, gridRange, i);
    line(0, i, -gridRange, 0, i, gridRange);
  }
}

void axis(int range){
  strokeWeight(1);
  stroke(0, 100, 100);
  line(0, 0, 0, range, 0, 0);
  stroke(100, 100, 100);
  line(0, 0, 0, 0, range, 0);
  stroke(200, 100, 100);
  line(0, 0, 0, 0, 0, range);
}
