import geomerative.*;


//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
//Choose the letters to print
String wordicle = "abc";
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////



int fontRelSize = 25/(wordicle.length());
int ptDensity = 200/fontRelSize;
int amountOfLayers = 6;

void setup() {
  int FX = displayWidth;
  int FY = displayHeight;
  int TQX = 3*(displayWidth/4);
  int TQY = 3*(displayHeight/4);
  size(TQX, TQY, P2D);
  smooth();
  colorMode(HSB, 360, 100, 100, 100);
  background(0,0,50);
  println(fontRelSize);
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
  //Font size automatically adapts to the screen resolution
  int fontSize;
  fontSize = fontRelSize * (round((height+width)/30));
  
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
  //Initialize geomarative; create a font
  RG.init(this);
  RFont governorEdit = new RFont("governor.ttf",fontSize,CENTER);
  
  
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
  //Segment length variable
  int segmentLength = round( (sqrt(height*width)) / ptDensity);
  println("Segment length is: " + segmentLength);
  RCommand.setSegmentLength(segmentLength);


//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
  //Convert string into a group, then the group into a polygon
  RGroup wordGeoGroup = governorEdit.toGroup(wordicle);
  wordGeoGroup = wordGeoGroup.toPolygonGroup();
  println("Group wordGeoGroup has " + wordGeoGroup.countElements() + " elements.");
  
  
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
  //Get point arrays wordPoints[], centerOfWord;
  RPoint[] wordPoints = wordGeoGroup.getPoints();
  RPoint centroidOfWord = wordGeoGroup.getCentroid();
  

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
  //Generate stupidPoint array
  int[] stupidPoint = new int[wordPoints.length];
  
  
  //Print the abc original;
  pushMatrix();
  for (int n=1; n<wordPoints.length; n++){
    stupidPoint[n] = 0;
    if ((segmentLength * 1.1) < wordPoints[n].dist(wordPoints[n-1])) {
      println("Distance between pt. " + (n-1) + " and pt. " + n + " is " + wordPoints[n].dist(wordPoints[n-1]) + ", which is more than 1.1x segmentLength");
      strokeWeight(0);
      stupidPoint[n] = 1;
      stupidPoint[n-1] = 2;
      point(wordPoints[n].x, wordPoints[n].y);
      point(wordPoints[n-1].x, wordPoints[n-1].y);
    } else {
      strokeWeight(1);
      line(wordPoints[n].x, wordPoints[n].y, wordPoints[n-1].x, wordPoints[n-1].y);
    }
  }
  popMatrix();
  
  int lastPointID = stupidPoint.length - 1;
  println();
  println("ID of last point is " + lastPointID + " and the length of the array wordPoints is " + wordPoints.length);
  println();
  stupidPoint[0] = 1;
  stupidPoint[lastPointID] = 2;
  

  //Draw each "connected" shape using PShape
  int shapeID = 0;
  float fillColor = 200;
  float fillSaturation = 100;
  float fillBrightness = 100;
  float fillAlpha = 0;
  float randomStrokeColor = 200;
  float strokeOpacity = 100;
  
  for (int v = amountOfLayers - 1; v >= 0; v--){
    float randomShiftX = ((v/2) * random(-10,10));
    float randomShiftY = ((v/2) * random(-10,10));
    randomStrokeColor = random(360);
    float randomWeight = (1 + (random(2)*random(8)));
    strokeOpacity = 100/((v)+1);
    for (int a = 0; a<wordPoints.length; a++){
      if (stupidPoint[a] == 1){
        pushMatrix();
        strokeWeight(randomWeight);
        stroke(randomStrokeColor, 100, 100, strokeOpacity);
        translate( ((width/2) + randomShiftX), ((height/2) + randomShiftY) - centroidOfWord.y);
        fill(fillColor, fillSaturation, fillBrightness, fillAlpha);
        beginShape();
        //println("Point [" + a + "] is the beginning of a shape " + shapeID);
        vertex(wordPoints[a].x, wordPoints[a].y);
      } else if (stupidPoint[a] == 0){
        //println("Point [" + a + "] is a vertex of a shape " + shapeID);
        vertex(wordPoints[a].x, wordPoints[a].y);
      } else if (stupidPoint[a] == 2){
        //println("Point [" + a + "] is the end of a shape " + shapeID);
        vertex(wordPoints[a].x, wordPoints[a].y);
        endShape();
        popMatrix();
        shapeID++;
      }
    }
  }
  println("There are this many points: " + wordPoints.length);
  
  saveFrame("Layer1.png");
  saveFrame("Layer2.png");
  
  PImage postProcessX;
  postProcessX = loadImage("Layer2.png");
  
  PImage postProcess;
  postProcess = loadImage("Layer1.png");
  postProcess.loadPixels();
  int recSize = 8;
  for(int a = 0; a<postProcess.height - recSize; a += recSize){
    for(int b = 0; b<postProcess.width - recSize; b += recSize){
      int totallyRandom = round(random(50));
      for(int x = 0; x < recSize; x++){
        for(int y = 0; y < recSize; y++){
          postProcess.pixels[((a + (x)) * width) + (b + y)] = color(0,0,100-totallyRandom,totallyRandom);
        }
      }
    }
  }
  postProcess.updatePixels();
  //postProcess.blend(postProcessX, 0, 0, postProcess.width, postProcess.height, 0, 0, postProcess.width, postProcess.height, BLEND);
  image(postProcess,0,0);
  filter(DILATE);
}
