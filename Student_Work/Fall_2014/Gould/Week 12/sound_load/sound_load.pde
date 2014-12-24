import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer player;
FFT fft;

void setup() {
  size(200, 200);
  colorMode(HSB, 360, 100, 100, 100);
  
  minim = new Minim(this);
  player = minim.loadFile("Sleepyhead.mp3");
  player.loop();
  fft = new FFT(player.bufferSize(), player.sampleRate());
}

void draw() {
  background(0);
  stroke(random(0, 360), 100, 100);
  fft.forward(player.mix);
  
  for (int i = 0; i < fft.specSize(); i++) {
    line(i, height, i, height - fft.getBand(i));
  }
}

void mousePressed() {
  player.pause();
}

void keyPressed() {
  player.play();
}
