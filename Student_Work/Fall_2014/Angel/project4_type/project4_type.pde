import geomerative.*;
String word = "BLINDS";

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(600, 400, P2D);
  background(210, 93, 51);
  translate(width/2, 230);
  noFill();
  stroke(0, 0, 100);

  // always initialize the library in setup
  RG.init(this);
  RFont font = new RFont( "Tungsten-Book.ttf", 150, CENTER);

  // Number of segments between each point
  RCommand.setSegmentLength(6);

  // Get a polygon for a group of characters
  RGroup grp = font.toGroup(word);

  // Convert the word to polygons
  grp = grp.toPolygonGroup();

  // Find all the points in the polygon and put in a points array list
  // An array list is a list of values seperated by commas
  RPoint[] pnts = grp.getPoints();

  // Using noise to produce random sizes for the ellipse points
  float noiseSeed = 0;

  // Loop through all the points in the array list
  // Draw an ellipse at the x and y location
  for ( int i = 0; i < pnts.length; i++ ) { 
    float d = noise(noiseSeed);
    rect(pnts[i].x, pnts[i].y, d*20, d*20);
    noiseSeed += 0.15;
  }
}

