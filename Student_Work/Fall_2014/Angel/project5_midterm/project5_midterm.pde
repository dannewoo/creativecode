import geomerative.*;
String word = "SPRINKLES";

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(1224, 792, P2D);
  background(210, 76, 25);
 

  strokeWeight(3);
   for (int x = 0; x < 1250; x +=30) {
    for (int y = 0; y < 800; y += 25) {
      if((x % 20) == 0) {
        stroke(random(50, 250), 100, 100);
        line(x, y, x+20, y+20);
      }else {
        stroke(random(250, 360), 100, 100);
        line(x, y, x+20, y-20);
      }
    }
  }
  
  //letters
  pushMatrix();
  translate(595, 550);
  strokeWeight(1);
  stroke(0, 0, 100);
  noFill();
  
  //letters
  RG.init(this);
  RFont font = new RFont( "Tungsten-Book.ttf", 400, CENTER);

  // Number of segments between each point
  RCommand.setSegmentLength(3);

  RGroup grp = font.toGroup(word);

  // Convert the word to polygons
  grp = grp.toPolygonGroup();

  // Find all the points in the polygon and put in a points array list
  // An array list is a list of values seperated by commas
  RPoint[] pnts = grp.getPoints();

  for ( int i = 0; i < pnts.length; i++ ) { 
    ellipse(pnts[i].x, pnts[i].y, 20, 20);
  }
  popMatrix();
}

