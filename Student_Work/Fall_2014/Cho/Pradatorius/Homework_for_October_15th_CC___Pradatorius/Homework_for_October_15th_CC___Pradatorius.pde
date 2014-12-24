String word = "Pradatorius";
import geomerative.*;
RFont font;
RPolygon polygon;

void setup() {
  size(800, 600, P2D); 
  colorMode(HSB, 360, 100, 100);
  background(360);
  smooth();
  noStroke();

  RG.init(this);
  font = new RFont("Reality Hyper Regular.ttf", 100, CENTER);

  RCommand.setSegmentLength(10);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  
  RGroup polygon = font.toGroup(word);

  polygon = polygon.toPolygonGroup();
  
  RPoint[] pnts = polygon.getPoints();
  
  
  
  translate(width/2, (height/2) + (polygon.getHeight()/2));
  float noiseCount = 0;
  noiseDetail(2, 1.3);
  
  for( int i = 0; i < pnts.length; i++) {
    fill(0);
     ellipse(pnts[i].x, pnts[i].y, 5, 5); 
  }

}
