import geomerative.*;
void setup() {

  size(500, 400, P2D);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 10);
fill(9, 90, random(50,80));
noStroke();
translate(width/2, 200);

  String word = "s c a r y";
  int fontSize = 300;

  RG.init(this);
  RFont font = new RFont( "Lato-HaiIta.ttf", 100, CENTER);
  
  // Number of segments between each point
  RCommand.setSegmentLength(10);
  
  // Get a polygon for a group of characters
  RGroup grp = font.toGroup(word);
  
  // Convert the word to polygons
  grp = grp.toPolygonGroup();
  
  // Find all the points in the polygon and put in a points array list
  // An array list is a list of values seperated by commas
  RPoint[] pnts = grp.getPoints();

  float noiseSeed = 0;
  for (int i = 0; i < pnts.length; i++) { 
    float d = noise(noiseSeed);
    ellipse(pnts[i].x, pnts[i].y, d*20, d*30);
    noiseSeed += 0.5;

} }
  









