// balls speed
float minsp = random(10 , 30);
float maxsp = random(40 , 90);

// balls setup
float d = random(75 , 150);
float x, y, xspeed, yspeed;
float sx, sy, sxspeed,  syspeed;
float sdx, sdy, sdxspeed,  sdyspeed;
float sdax, sday, sdaxspeed,  sdayspeed;
float sadax, saday, sadaxspeed,  sadayspeed;
float ksadax, ksaday, ksadaxspeed,  ksadayspeed;
import geomerative.*;

//text setup
int wtext = 6;
int htext = 6;
int fsize = 75;
int ll =  10;

//  words
String Sd ="SIDDESIGN";
String ia = "HAPPY HOLIDAYS";
String fr = "FROM";


void setup() {
  size(displayWidth , displayHeight);
  noStroke();
 colorMode(HSB, 360, 100, 100, 100);
  //set random

  x = random(d, width - d);
  y = random(d, height - d);
  sx = random(d, width - d);
  sy = random(d, height - d);
  sdx = random(d, width - d);
  sdy = random(d, height - d);
  sdax = random(d, width - d);
  sday = random(d, height - d);
  sadax = random(d, width - d);
  saday = random(d, height - d);  
  ksadax = random(d, width - d);
  ksaday = random(d, height - d);  
  //speed
  xspeed = random(minsp , maxsp);
  yspeed = random(minsp , maxsp);
  sxspeed = random(minsp , maxsp);
  syspeed = random(minsp , maxsp);
  sdxspeed = random(minsp , maxsp);
  sdyspeed = random(minsp , maxsp);
  sdaxspeed = random(minsp , maxsp);
  sdayspeed = random(minsp , maxsp);
  sadaxspeed = random(minsp , maxsp);
  sadayspeed = random(minsp , maxsp);
  ksadaxspeed = random(minsp , maxsp);
  ksadayspeed = random(minsp , maxsp);
   frameRate(50);


}

void draw() {
  background(0);
 
   //ball1
    x = x + xspeed;
    y = y + yspeed;
  if ((x > width - d/2) || (x < d/2)) {
    xspeed = xspeed * -1;
  }
  if ((y > height - d/2) || (y < d/2)) {
    yspeed = yspeed * -1;
  }
    fill(random(0, 360 ), 80, 100, 100);
    ellipse(x,y,d,d) ;
  
  //ball2
     sx = sx + sxspeed;
     sy = sy + syspeed;
  if ((sx > width - d/2) || (sx < d/2)) {
    sxspeed = sxspeed * -1;
  }
  if ((sy > height - d/2) || (sy < d/2)) {
    syspeed = syspeed * -1;
  }
    fill(random(0, 360 ), 80, 100, 100);
    ellipse(sx,sy,d,d);
  
   //ball3  
      sdx = sdx + sdxspeed;
      sdy = sdy + sdyspeed;
  if ((sdx > width - d/2) || (sdx < d/2)) {
    sdxspeed = sdxspeed * -1;
  }
  if ((sdy > height - d/2) || (sdy < d/2)) {
    sdyspeed = sdyspeed * -1;
  }
   fill(random(0, 360 ), 80, 100, 100);
   ellipse(sdx,sdy,d,d);
    
     //ball4  
      sdax = sdax + sdaxspeed;
     sday = sday + sdayspeed;
  if ((sdax > width - d/2) || (sdax < d/2)) {
    sdaxspeed = sdaxspeed * -1;
  }
  if ((sday > height - d/2) || (sday < d/2)) {
    sdayspeed = sdayspeed * -1;
  }
    fill(random(0, 360 ), 80, 100, 100);
    ellipse(sdax,sday,d,d);
  
       //ball5
      sadax = sadax + sadaxspeed;
      saday = saday + sadayspeed;
  if ((sadax > width - d/2) || (sadax < d/2)) {
    sadaxspeed = sadaxspeed * -1;
  }
  if ((saday > height - d/2) || (saday < d/2)) {
    sadayspeed = sadayspeed * -1;
  }
   fill(random(0, 360 ), 80, 100, 100);
   ellipse(sadax,saday,d,d);
    
           //ball5
      ksadax = ksadax + ksadaxspeed;
      ksaday = ksaday + ksadayspeed;
  if ((ksadax > width - d/2) || (ksadax < d/2)) {
    ksadaxspeed = ksadaxspeed * -1;
  }
  if ((ksaday > height - d/2) || (ksaday < d/2)) {
    ksadayspeed = ksadayspeed * -1;
  }
  
  fill(random(0, 360 ), 80, 100, 100);
  ellipse(ksadax,ksaday,d,d);
    
  RG.init(this);
  RFont font = new RFont("chunkfive.ttf", fsize, RFont.CENTER);
  RCommand.setSegmentLength(ll);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  RGroup str = font.toGroup(Sd);
  RGroup rts = font.toGroup(ia);
  RGroup frt = font.toGroup(fr);
  str = str.toPolygonGroup();
  rts = rts.toPolygonGroup();
  frt = frt .toPolygonGroup();
  RPoint[] str_pnts = str.getPoints();
  RPoint[] rts_pnts = rts.getPoints();
  RPoint[] frt_pnts = frt.getPoints();

 pushMatrix();
  translate(width/2, height/2 - 100);
  for(int a = 0; a < rts_pnts.length; a++) {
  fill(random(0, 360 ), 80, 100, 100);
  ellipse(rts_pnts[a].x , rts_pnts[a].y, random(wtext, htext), random(wtext, htext));
  }
  popMatrix();

 pushMatrix();
  translate(width/2, height/2);
  for(int a = 0; a < frt_pnts.length; a++) {
  fill(random(0, 360 ), 80, 100, 100);
  ellipse(frt_pnts[a].x , frt_pnts[a].y, random(wtext, htext), random(wtext, htext));
  }
  popMatrix();
   pushMatrix();
  translate(width/2, height/2 + 100);
  for(int a = 0; a < str_pnts.length; a++) {
  fill(random(191, 222), random(0, 100), 100, 100); 
  ellipse(str_pnts[a].x, str_pnts[a].y, random(wtext, htext), random(wtext, htext));
  }
  popMatrix();
} 
  

