import ddf.minim.*;

Minim minim;
AudioSample s01, s02, s03, s04, s05;
int c;

void setup() {
  size(600, 400);
  colorMode(HSB, 360, 100, 100);
  c = 0;
  minim = new Minim(this);
  s01 = minim.loadSample("Clock ticking sound effect (4) (1 minute).mp3");
  s02 = minim.loadSample("Clock ticking sound effect (3).mp3");
  s03 = minim.loadSample("ANTIQUE CLOCK SOUND EFFECT IN HIGH QUALITY.mp3");
  s04 = minim.loadSample("Bubble (Sound effect).mp3");
  s05 = minim.loadSample("Clocks (Soundtrack).mp3");
}

void draw() {
  background(c,100,100);
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
  
}

