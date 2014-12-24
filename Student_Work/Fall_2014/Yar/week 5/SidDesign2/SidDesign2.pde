// core
import geomerative.*;
int mainw = 800;
int mainh = 600;
int wtext = 6;
int htext = 6;
int fsize = 75;
int ll =  10;
//colors 
int red = 0;
int green1 = 205;
int green2 = 89;
int blue = 255;
color white = color(255, 255, 255);
//  words
String Sd ="SIDDESIGN";
String ia = "INFINITE ABILITIES";

//setup
void setup() {
  size(mainw, mainh, P2D); 
  noStroke();   
  colorMode(RGB, 255, 255, 255); 
  background(white); 

  //start design
  RG.init(this);
  RFont font = new RFont("chunkfive.ttf", fsize, RFont.CENTER);
  RCommand.setSegmentLength(ll);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  RGroup str = font.toGroup(Sd);
  RGroup rts = font.toGroup(ia);
  str = str.toPolygonGroup();
  rts = rts.toPolygonGroup();
  RPoint[] str_pnts = str.getPoints();
  RPoint[] rts_pnts = rts.getPoints();

  pushMatrix();
  translate(width/2, height/2 - 100);
  for(int a = 0; a < str_pnts.length; a++) {
    fill( random(red), random(green1), random(blue)); 
    rect(str_pnts[a].x, str_pnts[a].y, random(wtext, htext), random(wtext, htext));
  }
  popMatrix();
  pushMatrix();
  translate(width/2, height/2 + 100);
  for(int a = 0; a < rts_pnts.length; a++) {
   fill( random(red), random(green2), random(blue)); 
    rect(rts_pnts[a].x , rts_pnts[a].y, random(wtext, htext), random(wtext, htext));
  }
  popMatrix();
}
