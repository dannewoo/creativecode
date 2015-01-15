import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.analysis.*; 
import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class rjd2_1976 extends PApplet {




Minim minim;  
AudioPlayer song;
FFT fftLin;
FFT fftLog;

float[] y;
float[] x;
float spectrumScale = 10;
float r = 0;
int i;
Slash[] slash;
int maxRow = 40;
float c = random(180, 360);
int[] colors = {color(c, 270, 50, 40), color((c + 90) % 360, 80, 80), color((c + 90) % 360, 100, 80)};


public void setup(){
   size(displayWidth, displayHeight);
    colorMode(HSB, 360, 100, 100);
    background(100, 0, 0);
    minim = new Minim(this);
    song = minim.loadFile("rjd2_1976.mp3", 1024);
    song.loop();
    fftLin = new FFT( song.bufferSize(), song.sampleRate() );
    fftLin.linAverages( 50 );
      slash=new Slash[fftLin.avgSize()];
      for(int i=0; i<fftLin.avgSize(); i++){
          slash[i]=new Slash(colors[i%3]);
    }
}


public void draw() {
    float centerFrequency = 0;
    fftLin.forward( song.mix );
     
    x = new float[fftLin.avgSize()];
    y = new float[fftLin.avgSize()];
    for(int i = 0; i < fftLin.avgSize(); i++) {
        slash[i].draw();
    }
    for (int i=0; i < maxRow; i++) {
        slash[i].draw();
    }
}


class Slash {
    float x1, x2, y1, y2, tarX1, tarX2, tarY1, tarY2, easing = random(0.1f);
    int timer, tMax, slashWidth=10, slashLength=240;
    boolean vertical;
    int c;
 

 
    Slash(int _c) {
        c=_c;
        initSlash();
    }
 
    public void initSlash() {
        timer=0;
        tMax= (int) random(60, 150);
        vertical=random(1)>.5f;
 
        x1=x2=(int)random(1, PApplet.parseInt(width/40)-1)*40;
        y1=y2=(int)random(1, PApplet.parseInt(height/40)-1)*40;
 
        if(x1<width/2) tarX2=x1+slashLength;
        else tarX2=x1-slashLength;
 
        if(y1<height/2) tarY2=y1+slashLength;
        else tarY2=y1-slashLength;
    }
 
    public void draw() {
        x2=ease(x2, tarX2, easing);
        y2=ease(y2, tarY2, easing);
        if (abs(x2-tarX2)<=1) {
            timer++;
 
            if (timer>tMax) {
                tarX1=tarX2;
                tarY1=tarY2;
                x1=ease(x1, tarX1, easing);//
                y1=ease(y1, tarY1, easing);
 
                for(int i = 0; i < fftLin.avgSize(); i++){
                  strokeWeight(fftLin.getAvg(i));
                  if(i % 2 == 1) {
                   initSlash();
                    }
                 }
              }
          }
 
        noStroke();
        fill(c);
        if(mousePressed){
           fill(c + 90);
         }
        else{
           fill(c);
         }

        if (vertical) quad(x1, y1-slashWidth, x1, y1+slashWidth, x2, y2+slashWidth, x2, y2-slashWidth);
        else quad(x1-slashWidth, y1, x1+slashWidth, y1, x2+slashWidth, y2, x2-slashWidth, y2);
    }
 
    // a snippet function i often use for animation easing
    public float ease(float value, float target, float spectrumScale) {
        float d = target - value;
        if (abs(d)>1) value+= d*spectrumScale;
        return value;
    }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "rjd2_1976" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
