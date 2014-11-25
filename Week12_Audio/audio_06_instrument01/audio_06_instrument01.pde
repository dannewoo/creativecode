import ddf.minim.*;

Minim minim;
AudioSample s01, s02, s03, s04, s05, s06, s07, s08, s09, s10;
int c;

void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);
  c = 0;
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
  background(c, 80, 100);
  stroke(255);
}

void keyPressed() {
  if ( key == 'a' ) {
    c = 36; 
    s01.trigger();
  }
  if ( key == 's' ) {
    c = 36*2; 
    s02.trigger();
  }
  if ( key == 'd' ) {
    c = 36*3; 
    s03.trigger();
  }
  if ( key == 'f' ) {
    c = 36*4; 
    s04.trigger();
  }
  if ( key == 'g' ) {
    c = 36*5; 
    s05.trigger();
  }
  if ( key == 'h' ) {
    c = 36*6; 
    s06.trigger();
  }
  if ( key == 'j' ) {
    c = 36*7; 
    s07.trigger();
  }
  if ( key == 'k' ) {
    c = 36*8; 
    s08.trigger();
  }
  if ( key == 'l' ) {
    c = 36*9; 
    s09.trigger();
  }
  if ( key == ';' ) {
    c = 36*10; 
    s10.trigger();
  }
}

