import oscP5.*;
OscP5 oscP5;

//fractal
//float speed = 0.0008;
//float r = 3.145;
//float branchLength = 50;
//int numBranches = 6;
//float colorInt = .5;
//float currentColor = 0;
float speed;
float r = 3.145;
float branchLength = 50; 
int numBranches = 6;
float colorInt = .5;
float currentColor = 0;

// num faces found
int found;

// pose
float poseScale;
PVector posePosition = new PVector();
PVector poseOrientation = new PVector();
PVector poseSize = new PVector();

// gesture
float mouthHeight;
float mouthWidth;
float eyeLeft;
float eyeRight;
float eyebrowLeft;
float eyebrowRight;
float jaw;
float nostrils;


void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  frameRate(30);
  background(300, 100, 15);

  oscP5 = new OscP5(this, 8338);
  oscP5.plug(this, "found", "/found");
  oscP5.plug(this, "poseScale", "/pose/scale");
  oscP5.plug(this, "posePosition", "/pose/position");
  oscP5.plug(this, "poseOrientation", "/pose/orientation");
  oscP5.plug(this, "mouthWidthReceived", "/gesture/mouth/width");
  oscP5.plug(this, "mouthHeightReceived", "/gesture/mouth/height");
  oscP5.plug(this, "eyeLeftReceived", "/gesture/eye/left");
  oscP5.plug(this, "eyeRightReceived", "/gesture/eye/right");
  oscP5.plug(this, "eyebrowLeftReceived", "/gesture/eyebrow/left");
  oscP5.plug(this, "eyebrowRightReceived", "/gesture/eyebrow/right");
  oscP5.plug(this, "jawReceived", "/gesture/jaw");
  oscP5.plug(this, "nostrilsReceived", "/gesture/nostrils");
  oscP5.plug(this, "poseSize", "/pose/size");
}

void draw() { 
ellipseMode(CENTER);
  
  int fillColor = round(posePosition.x);
  float speed = (.005);
  
//  pushMatrix();
//  rotate(poseOrientation.y);
  
  scale(poseScale/5);
  fill(fillColor, 80, 90, round(poseScale));
  face(width/2, height/2, -HALF_PI, numBranches);
  r += speed;
  
  
    

    float faceLength = (posePosition.y + mouthHeight + jaw + eyeRight + ((eyebrowRight + eyebrowLeft)/2)); 
//    ellipseMode(CENTER);
    //ellipse(0, 0, posePosition.x, faceLength);

//rect(posePosition.x, posePosition.y, 100, 100);
//popMatrix();
}

// OSC CALLBACK FUNCTIONS

public void found(int i) {
  println("found: " + i);
  found = i;
}

public void poseScale(float s) {
  println("scale: " + s);
  poseScale = s;
}

public void posePosition(float x, float y) {
  println("pose position\tX: " + x + " Y: " + y );
  posePosition.set(x, y, 0);
}

//public void poseOrientation(float x, float y, float z) {
//  println("pose orientation\tX: " + x + " Y: " + y + " Z: " + z);
//  poseOrientation.set(x, y, z);
//}

//public void mouthWidthReceived(float w) {
//  println("mouth Width: " + w);
//  mouthWidth = w;
//}
//
//public void mouthHeightReceived(float h) {
//  println("mouth height: " + h);
//  mouthHeight = h;
//}
//
//public void eyeLeftReceived(float f) {
//  println("eye left: " + f);
//  eyeLeft = f;
//}
//
//public void eyeRightReceived(float f) {
//  println("eye right: " + f);
//  eyeRight = f;
//}
//
//public void eyebrowLeftReceived(float f) {
//  println("eyebrow left: " + f);
//  eyebrowLeft = f;
//}
//
//public void eyebrowRightReceived(float f) {
//  println("eyebrow right: " + f);
//  eyebrowRight = f;
//}

//public void jawReceived(float f) {
//  println("jaw: " + f);
//  jaw = f;
//}

//public void nostrilsReceived(float f) {
//  println("nostrils: " + f);
//  nostrils = f;
//}

//// all other OSC messages end up here
//void oscEvent(OscMessage m) {
//  if(m.isPlugged() == false) {
//    println("UNPLUGGED: " + m);
//  }
//}
