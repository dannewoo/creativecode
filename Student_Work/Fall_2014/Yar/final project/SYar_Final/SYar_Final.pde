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
  xspeed = maxsp;
  yspeed = maxsp;
  sxspeed = maxsp;
  syspeed = maxsp;
  sdxspeed = maxsp;
  sdyspeed = maxsp;
  sdaxspeed = maxsp;
  sdayspeed = maxsp;
  sadaxspeed = maxsp;
  sadayspeed = maxsp;
  ksadaxspeed = maxsp;
  ksadayspeed = maxsp;
   frameRate(50);
   
   //music  
  minim = new Minim(this);
  song = minim.loadFile("123.mp3", 1024);  
  song.loop();
  fftLin = new FFT( song.bufferSize(), song.sampleRate() );
  fftLin.linAverages( count );
  s = new float[fftLin.avgSize()];
   
  //snow
    fallingChars = new ArrayList(); 
  for( int i = 0; i< 60; i++)     
  CreateChar(1);  
  

}

void draw() {
  background(0);
  
  //smowfall
   for (int i = fallingChars.size()-1; i >= 0; i--) 
  { 
      fallingStar fc = (fallingStar) fallingChars.get(i);
      if (fc.notVisible() ) fallingChars.remove(i);
      else
      {
        fc.fall();
        fc.display(); 
      }
  }
  if ((frameCount & 2) > 0 )
  {
    int x = (int)random(4);
    for (int j = 0; j < x; j++)
      {
          CreateChar(4);  // top 1/4th
          CreateChar(8);  // top 1/8th
      }
  }
  
     //music
   fftLin.forward( song.mix );

  float angle = radians(360/float(count));
  for (int i=0; i<count; i++){
    s[i] = fftLin.getAvg(i) * eqc;
    float faderX = s[i]/width;
    // positions
    float randomX = random(0,width);  
    float randomY = random(0,height);
    float circleX = width/2 + sin(angle*i)*300;
    float circleY = height/2 + cos(angle*i)*300;

    float x = lerp(circleX, circleY, -faderX);
    float y = lerp(circleY, circleY, -faderX);
    
      fill(0,0,30);
        switch( theShape ){
    case 0:
    default:
      ellipse(x,y,size,size);
      break;
    case 1:
      rect(x,y,size,size);
      break;
        }
  }
// music end

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
void star(int nPoints, float rad1, float rad2)
{
float angle = TWO_PI / nPoints;
float angle2 = angle / 2;
float origAngle = 0.0;
beginShape();
fill(0,0,100);

for (int i = 0; i < nPoints; i++)
  {
  float y1 = rad1 * sin(origAngle);
  float x1 = rad1 * cos(origAngle);
  float y2 = rad2 * sin(origAngle + angle2);
  float x2 = rad2 * cos(origAngle + angle2);
  vertex(x1, y1);
  vertex(x2, y2);
  origAngle += angle;
  }
endShape(CLOSE);
}
 
  void keyPressed(){
    //eq shape changer
    if( key==CODED ){
     if( keyCode == UP ){ theShape=(theShape+1)%2; }

    }
     if ((key == 'T') || (key == 't')) { d = d + 10;}
     if ((key == 'R') || (key == 'r')) { d = d - 10;}
      // eq speed 
   if ((key == 'U') || (key == 'u')) { eqc = eqc + 30;}
   if ((key == 'I') || (key == 'i')) { eqc = eqc - 30;}
   //snow fall
      if ((key == 'S') || (key == 's')) { snowsppd = snowsppd +1;}
   if ((key == 'K') || (key == 'k')) { snowsppd = snowsppd - 1;}
  }
