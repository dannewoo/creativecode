import geomerative.*;
int fontSize = 100;
String word = "obscure";

int points = 120;
int d = 100;

void setup(){
 size(1000, 600);
 colorMode(HSB, 360, 100, 100);
 background(200);
 smooth();
 noStroke();
 
 RG.init(this);
 RFont font = new RFont("Nevis2.ttf", fontSize, RFont.CENTER);
 translate(width/2, height/2);
 font.draw(word);

 beginShape();
for (int i = 0; i < points; i++){
 float randomValue;
 if (i%2 == 1) randomValue = -random(0, d/2);
 else randomValue = random(0, d);
 float vertexX = sin(radians(i * (360/points))) * (d + randomValue); 
 float vertexY = cos(radians(i * (360/points))) * (d + randomValue); 
 vertex(vertexX, vertexY); 
 } 
 endShape();
}

///////////////////////////////////////////////////////////////////////////////////////////

//import geomerative.*;
//
//void setup() {
//  size(600, 400, P2D);
//  background(255);
//  fill(0);
//  noStroke();
//  String word = "obscure";
//
//  translate(width/2, 275);
//  
//  int fontSize = 200;
//  
//  // initialize the geomerative library
//  RG.init(this);
//  
//  // create a new font
//  RFont font = new RFont("Nevis2.ttf", fontSize, CENTER);
//
//  // before we generate anything, we need to tell the library how long we want between the points of the font
//  RCommand.setSegmentLength(20);
//
//  // We can also tell it how to space them out
//  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
//  //RCommand.setSegmentator(RCommand.UNIFORMSTEP);
//  //RCommand.setSegmentator(RCommand.ADAPTATIVE); 
//
//  // get a polygon from a single character.
//  RPolygon polygon = font.toPolygon(word);
//
//  // because a character has multiple contours (the whole in the 'a' is one, the outline another),
//  // let's loop through all the contours first
//  for(int i = 0; i < polygon.contours.length; i++) {
//    // for each contour, let's loop through all the points
//    RContour curContour = polygon.contours[i];
//    for(int j = 0; j < curContour.points.length; j++) {
//      // now for each RPoint (which is a vector), make an ellipse
//      RPoint curPoint = curContour.points[j];
//      float randomVal = random(3, 15);
//      ellipse(curPoint.x, curPoint.y, randomVal, randomVal);
//    }
//  }
//}

