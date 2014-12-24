//core
import geomerative.*;
float increment = 0.010;
int mainh = 800;
int mainw = 600;
int clonds = 198;
int tick = 40;
int sbox = 50;
int bbox = 100;


//colors 

color white = color(255, 255, 255);
color borwn = color(59, 29, 0);
color gold = color(232, 202, 0);
int red = 0;
int green = 0;
int blue = 50;


// text 
int wtext = 5;
int htext = 5;
int fsize = 70;
int ll =  10;
String Sd ="MINECRAFT";



void setup() {
  
  size(mainw, mainh, P2D); 
  noStroke();   
  colorMode(RGB, 255, 255, 255); 
  background(white);
  
   // text setup
  RG.init(this);
  RFont font = new RFont("ka1.ttf", fsize, RFont.CENTER);
  RCommand.setSegmentLength(ll);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  RGroup str = font.toGroup(Sd);
  str = str.toPolygonGroup();
  RPoint[] str_pnts = str.getPoints();

//nose bg
  
  loadPixels();

  float xoff = 0.0;
  float detail = map(height, 0.1, width, 0.1, 0.6);
  noiseDetail(8, detail);
  
  for (int x = 0; x < width; x++) {
    xoff += increment;   
    float yoff = 0.7;  
    for (int y = 0; y < height; y++) {
      yoff += increment; 
      
      float bright = noise(xoff, yoff) * clonds ;

     pixels[x+y*width] = color(bright, 90, 100);
    }
  }
  
  updatePixels();

   //borders
    fill(borwn);
    rect (mainw - sbox, mainw - sbox, sbox, sbox );
    rect (sbox / 2, sbox * 3 ,sbox , sbox * 2); 
    rect ( 0, 0, mainh, tick); 
    rect ( 0, mainh - tick , mainh, tick); 
    rect ( 0, 0, tick, mainh); 
    rect ( mainw - tick, 0, tick, mainh); 
    
    //boxes
    fill(gold);
    rect(mainw / 2/ 2, mainh / 2 / 2, bbox, bbox);
    rect(mainw / 2/ 2 + bbox / 2, mainh / 2 / 2 + bbox /2, bbox, bbox);
    rect(mainw / 2/ 2 + bbox , mainh / 2 / 2 + bbox, bbox, bbox);   
    rect(mainw / 2/ 2 + bbox + bbox / 2 , mainh / 2 / 2 + bbox + bbox / 2, bbox, bbox); 
    rect(mainw / 2/ 2 + bbox * 2 , mainh / 2 / 2 + bbox  * 2, bbox, bbox);
    rect(mainw / 2/ 2 + bbox * 2 + bbox / 2 , mainh / 2 / 2 + bbox  * 2 + bbox / 2, bbox, bbox);  
   
     // text
     
   pushMatrix();
translate(width/2, tick * 3);
  for(int a = 0; a < str_pnts.length; a++) {
    fill( random(red), random(green), random(blue)); 
    rect(str_pnts[a].x, str_pnts[a].y, random(wtext, htext), random(wtext, htext));
  }
  popMatrix();
endRecord();
}

      
  

