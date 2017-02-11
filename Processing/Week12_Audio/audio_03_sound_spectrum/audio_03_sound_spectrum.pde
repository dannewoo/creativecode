/*
This sketch illustrates the difference between viewing the full spectrum, 
linearly spaced averaged bands, and logarithmically spaced averaged bands.
*/

import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;  
AudioPlayer jingle;
FFT fftLin;
FFT fftLog;

float height3;
float height23;
float spectrumScale = 4;

void setup() {
  size(512, 480);
  textSize( 18 );
  height3 = height/3;
  height23 = 2*height/3;

  minim = new Minim(this);
  jingle = minim.loadFile("jingle.mp3", 1024);
  
  // loop the file
  jingle.loop();
  
  // create an FFT object that has a time-domain buffer the same size as jingle's sample buffer
  // note that this needs to be a power of two 
  // and that it means the size of the spectrum will be 1024. 
  // see the online tutorial for more info.
  fftLin = new FFT( jingle.bufferSize(), jingle.sampleRate() );
  
  // calculate the averages by grouping frequency bands linearly. use 30 averages.
  fftLin.linAverages( 30 );
  
  // create an FFT object for calculating logarithmically spaced averages
  fftLog = new FFT( jingle.bufferSize(), jingle.sampleRate() );
  
  // calculate averages based on a miminum octave width of 22 Hz
  // split each octave into three bands
  // this should result in 30 averages
  fftLog.logAverages( 22, 3 );
  
  rectMode(CORNERS);
}

void draw() {
  background(0);
  float centerFrequency = 0;
  
  // Perform a forward FFT on the samples in jingle's mix buffer
  // note that if jingle were a MONO file, this would be the same 
  // as using jingle.left or jingle.right
  fftLin.forward( jingle.mix );
  fftLog.forward( jingle.mix );
 
  // Draw the full spectrum -----------------------------------------
  noFill();
  for(int i = 0; i < fftLin.specSize(); i++) {
    stroke(255);
    line(i, height3, i, height3 - fftLin.getBand(i)*spectrumScale);
  }
  
  noStroke();
  
  // Draw the linear averages -----------------------------------------
  // Since linear averages group equal numbers of adjacent frequency bands
  // we can simply precalculate how many pixel wide each average's 
  // rectangle should be.
  int w = int( width/fftLin.avgSize() );
  for(int i = 0; i < fftLin.avgSize(); i++) {
    fill(255);
    // draw a rectangle for each average, multiply the value by spectrumScale so we can see it better
    rect(i*w, height23, i*w + w, height23 - fftLin.getAvg(i)*spectrumScale);
  }

  // Draw the logarithmic averages -----------------------------------------
  // Since logarithmically spaced averages are not equally spaced
  // we can't precompute the width for all averages.
  for(int i = 0; i < fftLog.avgSize(); i++) {
    centerFrequency = fftLog.getAverageCenterFrequency(i);
    // how wide is this average in Hz?
    float averageWidth = fftLog.getAverageBandWidth(i);   
    
    // we calculate the lowest and highest frequencies
    // contained in this average using the center frequency
    // and bandwidth of this average.
    float lowFreq  = centerFrequency - averageWidth/2;
    float highFreq = centerFrequency + averageWidth/2;
    
    // freqToIndex converts a frequency in Hz to a spectrum band index
    // that can be passed to getBand. in this case, we simply use the 
    // index as coordinates for the rectangle we draw to represent
    // the average.
    int xl = (int)fftLog.freqToIndex(lowFreq);
    int xr = (int)fftLog.freqToIndex(highFreq);
    
    fill(255);
    // draw a rectangle for each average, multiply the value by spectrumScale so we can see it better
    rect( xl, height, xr, height - fftLog.getAvg(i)*spectrumScale );
  }
}
