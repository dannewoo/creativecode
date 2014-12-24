import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;
AudioPlayer jingle;
FFT fft;
int w;
PImage fade;
float hVal;
float rWidth, rHeight;

void setup() {
  size(displayWidth, displayHeight, P3D);
  frameRate(30);
  background(255);
  minim = new Minim(this);
  jingle = minim.loadFile("Burning Frigate.mp3", 2048);
  jingle.loop();
  fft = new FFT( jingle.bufferSize(), jingle.sampleRate() );
  fft.linAverages(100);
  fade = get(0, 0, width, height);
  rWidth = width * 0.99;
  rHeight = height * 0.99;
  hVal = 0;
}

void draw() {
  background(255);
  tint(255, 99.9);
  image(fade, (width - rWidth)/2, 0, rWidth, rHeight);
  noTint();

  fft.forward( jingle.mix );
  colorMode(HSB, 166, 80, 100, 5);
  stroke(hVal, 236, 100, 100);
  colorMode(RGB, 255, 100, 255, 100);
  
  strokeWeight(width/fft.avgSize());
  for (int i = 0; i < fft.avgSize(); i++) {
    float w = map(i, 0, fft.avgSize(), 0, width);
    line( w, height, w, height - fft.getAvg(i)*8 );
    hVal = fft.getAvg(i)*300;
  }

  fade = get(0, 0, width, height);
}

