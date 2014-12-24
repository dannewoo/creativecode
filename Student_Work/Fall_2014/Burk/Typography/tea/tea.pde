import geomerative.*;
String word = "tea";
int origColor = 50;

void setup() {
  size(600, 400, P2D);
  background(255);
  colorMode(HSB, 360, 100, 100);
  translate(width/2, 260);
  fill(255);
  smooth();
  stroke((origColor + 120) % 360, 150, 150);
  strokeWeight(1);
  
  // always initialize the library in setup
  RG.init(this);
  RFont font = new RFont( "Montserrat-Bold.ttf", 250, CENTER);
  
  // Number of segments between each point
  RCommand.setSegmentLength(8);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  
  // Get a polygon for a group of characters
  RGroup grp = font.toGroup(word);
  
  // Convert the word to polygons
  grp = grp.toPolygonGroup();
  
  // Find all the points in the polygon and put in a points array list
  // An array list is a list of values seperated by commas
  RPoint[] pnts = grp.getPoints();

  // Loop through all the points in the array list
  for ( int i = 0; i < pnts.length; i++ ) { 
    line(pnts[i].x, pnts[i].y, 1, 1);
  }
}
