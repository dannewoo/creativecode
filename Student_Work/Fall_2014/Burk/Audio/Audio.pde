import ddf.minim.*;

int r = 25;

Minim minim;
AudioSample s01, s02, s03, s04, s05, s06, s07, s08, s09, s10;
int origColor = 80;

void setup() {
  size(330, 50);
  colorMode(HSB, 360, 100, 100);
  minim = new Minim(this);
  s01 = minim.loadSample("01.mp3");
  s02 = minim.loadSample("02.mp3");
  s03 = minim.loadSample("03.mp3");
  s04 = minim.loadSample("04.mp3");
  s05 = minim.loadSample("05.mp3");
  s06 = minim.loadSample("06.mp3");
  s07 = minim.loadSample("07.mp3");
  s08 = minim.loadSample("08.mp3");
  s09 = minim.loadSample("09.mp3");
  s10 = minim.loadSample("10.mp3");
}

void draw() {
  background(0, 0, 0);
  noStroke();
  ellipse(r, r, r, r);
  ellipse(r + 30, r, r, r);
  ellipse(r + 60, r, r, r);
  ellipse(r + 90, r, r, r);
  ellipse(r + 120, r, r, r);
  ellipse(r + 150, r, r, r);
  ellipse(r + 180, r, r, r);
  ellipse(r + 210, r, r, r);
  ellipse(r + 240, r, r, r);
  ellipse(r + 270, r, r, r);
}

void keyPressed() {
  if ( key == 'a' ) {
    fill(origColor + 20, 80, 80); 
    ellipse(r, r, r, r); 
    s01.trigger();
  }
  if ( key == 's' ) {
    fill(origColor + 40, 80, 80); 
//    rect(r + 30, r, r, r);
    s02.trigger();
  }
  if ( key == 'd' ) {
    fill(origColor + 60, 80, 80); 
    s03.trigger();
  }
  if ( key == 'f' ) {
    fill(origColor + 80, 80, 80); 
    s04.trigger();
  }
  if ( key == 'g' ) {
    fill(origColor + 100, 80, 80); 
    s05.trigger();
  }
  if ( key == 'h' ) {
    fill(origColor + 120, 80, 80);  
    s06.trigger();
  }
  if ( key == 'j' ) {
    fill(origColor + 140, 80, 80); 
    s07.trigger();
  }
  if ( key == 'k' ) {
    fill(origColor + 160, 80, 80); 
    s08.trigger();
  }
  if ( key == 'l' ) {
    fill(origColor + 180, 80, 80); 
    s09.trigger();
  }
  if ( key == ';' ) {
    fill(origColor + 90, 80, 80);  
    s10.trigger();
  }
}

