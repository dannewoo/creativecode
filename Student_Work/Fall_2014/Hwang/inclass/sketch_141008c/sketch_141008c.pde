//import geomerative.*;
//String word = "abc";
//int fontSize = 48;
//
//void setup(){
//size(600,400, P2D);
//background(255);
//stroke(0);
//  translate(width/2, 230);
//
//RG.init(this);
//  RFont coolfont = new RFont( "ROCKEB.TTF", fontSize, CENTER);
//RGroup grp = coolfont.toGroup(word);
// grp = grp.toPolygonGroup();
//
//RCommand.setSegmentLength(random (15,25));
//RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
//
//RPoint[] pnts = grp.getPoints();
//  for (int j = 0; j < pnts.length; j++){
//      float randomVal = random(3, 15);
//      rect(pnts[j].x, pnts[j].y, randomVal, randomVal);
//    
//  }
//}

import geomerative.*;
String letters = "abc";

void setup() {
  size(displayWidth, displayHeight, P2D);
  float fontSize = 48;
  background(0);
  translate(width/2, height/2);
  noFill();
  stroke(255);
  colorMode(HSB, 360, 100, 100);
  int baseColor = 150;
  
  
  RG.init(this);
  RFont coolfont = new RFont ("ROCKEB.TTF", 200, CENTER);
  RCommand.setSegmentLength(10);
  RGroup grp = coolfont.toGroup(letters);
  grp = grp.toPolygonGroup();
  RPoint[] pnts = grp.getPoints();
  
  float noiseSeed = 0;

  for (int j = 0; j < pnts.length; j++){
    float d = noise(noiseSeed);
    pushMatrix();
    stroke((baseColor + random(-30, 30))%360, 70, 100);
    ellipse(pnts[j].x, pnts[j].y, d*20, d*20);
    noiseSeed += 0.15;
    popMatrix();
  
}
}

