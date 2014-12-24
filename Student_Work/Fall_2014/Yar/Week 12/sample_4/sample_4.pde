//lib...
import ddf.minim.analysis.*;
import ddf.minim.*;
import ddf.minim.effects.*;
//core
int mainw = 1000;
int mainh =  mainw - 375;

//music reader
Minim minim;  
AudioPlayer song;
FFT fftLin;
LowPassSP lowpass;
HighPassSP highpass;

//eq setup
float[] z;
float Scale = 10;
int size = 3;
int beat = 7;
PImage img;

void setup() {
  size(mainw, mainh, P3D);
  background(255);
  noStroke();
  img = loadImage("23.jpg");
  minim = new Minim(this);
  song = minim.loadFile("Transcendence.mp3", 1024);  
  song.loop();
  fftLin = new FFT( song.bufferSize(), song.sampleRate() );
  fftLin.linAverages( beat );
  z = new float[fftLin.avgSize()];
  
  /* lowpass = new LowPassSP(20000, 44100); 
 highpass = new HighPassSP(200, 44100);  '
  song.addEffect(lowpass);
  song.addEffect(highpass);*/
}

void draw() {


  background(0);
  fftLin.forward( song.mix );
  for(int h = 0; h < fftLin.avgSize(); h++){
    z[h] = fftLin.getAvg(h);
  }
  for (int y = 0; y < img.height; y+=size ) {
    for (int x = 0; x < img.width; x+=size) {
      pushMatrix();
      int loc = x + (y * img.width);
      fill(img.pixels[loc]);
      translate(x, y, z[(x * y)%(beat-1)] * Scale);
      rect(0, 0, size, size);
      popMatrix();
    }
  }

}

