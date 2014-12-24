import ddf.minim.*;
import ddf.minim.analysis.*;
 
Minim minim;
AudioPlayer song;
FFT fft;
 
void setup()
{
  size(515, 200);
  minim = new Minim(this);
  song = minim.loadFile("song.mp3");
  song.loop();
  fft = new FFT(song.bufferSize(), song.sampleRate());
}
 
void draw()
{
  background(45,45,45);
  fft.forward(song.mix);
  strokeWeight(2);
  stroke(random(50,100), random(50,100), random(200,250));
  for(int i = 0; i < fft.specSize(); i++){  
    line(i, height, i, height - fft.getBand(i)*10);
  }
  
  strokeWeight(1);
  stroke(255,250,205);
  for(int i = 0; i < song.left.size() - 1; i++)
  {
    line(i, 50 + song.left.get(i)*50, i+1, 50 + song.left.get(i+1)*50);
    line(i, 150 + song.right.get(i)*50, i+1, 150 + song.right.get(i+1)*50);
  }
}
