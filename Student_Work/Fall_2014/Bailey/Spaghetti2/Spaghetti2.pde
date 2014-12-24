import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer player;
FFT fft;

void setup() {
  size(500,500);
  colorMode(HSB,360,100,100);
  background(255,0,0);
  
  minim= new Minim(this);
  player= minim.loadFile("Spaghetti MIX(1).mp3");
  player.loop();
  fft = new FFT(player.bufferSize(), player.sampleRate());
    
  //left top
  rect(width/6, height/6,width/3,height/3);
  //R top
  rect(width/2, height/6,width/3,height/3);
  //L bottom
  rect(width/6, height/2,width/3,height/3);
  // Mid
  rect(width/3, height/3,width/3,height/3);
}
void draw(){
  rect(width/2, height/2,width/3,height/3);
  
}
void mousePressed() {
 player.pause(); 
}
 void mouseReleased(){
   player.play();
 }



