import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;  
AudioPlayer song;
FFT fftLin;
FFT fftLog;

float[] y;
float[] x;
float spectrumScale = 50;
float r = 0;

void setup(){
  size(displayWidth/2, displayHeight/2);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  rectMode(CENTER);
  minim = new Minim(this);
  song = minim.loadFile("Sleepyhead.mp3", 1024);
  song.loop();
  fftLin = new FFT( song.bufferSize(), song.sampleRate() );
  fftLin.linAverages( 50 );
  x = new float[fftLin.avgSize()];
  y = new float[fftLin.avgSize()];
  for(int i = 0; i < fftLin.avgSize(); i++) {
    if(i == 0) {
      x[i] = 0;
      y[i] = 0;
    } else {
      x[i] = random(-width/2, width/2);
      y[i] = random(-height/2, height/2);
    }
  }
}

void draw(){
  noStroke();
  fill(0, 1);
  rect(width/2, height/2, width, height);
  float centerFrequency = 2;
  fftLin.forward( song.mix );
  translate(width/2, height/2);
  rotate(radians(r));
  for(int i = 0; i < fftLin.avgSize(); i++){
    strokeWeight(fftLin.getAvg(i));
    if(i % 2 == 1) {
      stroke(random(200, 245), 100, 100, 50);
    } else {
      stroke(random(330, 0), 100, 100, 50);
    }
    ellipse(x[i], y[i], fftLin.getAvg(i)*spectrumScale, fftLin.getAvg(i)*spectrumScale);
  }
  r += 0.3;
}
