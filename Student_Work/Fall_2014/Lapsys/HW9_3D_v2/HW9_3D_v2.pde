String currentSeason;
Grid grd;
PVector zeroPoint, foc;
AniCamera cam;

Tree[] evr;
color treeColor;
PVector[] treeLocation;

Ground g1;
Ground snow;

void setup(){
  size(displayWidth, displayHeight, P3D);
  colorMode(HSB, 360, 100, 100, 100);
  background(360);
  
  zeroPoint = new PVector(0, 0, 0);
  grd = new Grid(zeroPoint);
  cam = new AniCamera();
  cam.setPos(-200, -250, -200);
  
  snow = new Ground(64, 100, 40);
  snow.generate();
  
  g1 = new Ground(64, 100, 40);
  g1.generate();
  
  evr = new Tree[50];
  treeLocation = new PVector[evr.length];
  treeColor = color(140, 50, 50);
  
  for (int i = 0; i < evr.length; i++){
    evr[i] = new Tree();
    treeLocation[i] = new PVector(0,0,0);
    treeLocation[i].x = i * int(50 * random(-1, 1));
    treeLocation[i].z = i * int(50 * random(-1, 1));
    evr[i].setHeight(100);
    evr[i].setColor(treeColor);
    evr[i].setLocation(treeLocation[i]);
  }
  
  foc = new PVector(0, -50, 0);
  
  
}

void draw(){
  background(360);
//  directionalLight(0, 0, 100, 1, -1, 1);
  ambientLight(0, 0, 100);
  cam.enable();
  cam.setFocus(foc);
  
  
  
//  grd.showAxes(100);
//  grd.showPlane(100, 25, "XZ");
  
  cam.setRotation(300, 600, "RIGHT");
  for(int i = 0; i < evr.length; i++){
    evr[i].plant();
  }
  g1.spawn();
}
