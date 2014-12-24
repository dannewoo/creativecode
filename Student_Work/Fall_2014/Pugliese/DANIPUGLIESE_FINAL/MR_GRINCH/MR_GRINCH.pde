import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

import processing.pdf.*;

Minim minim;
AudioPlayer player;
FFT fft;
int w;
PImage fade;
float hVal;
float rWidth, rHeight;


int maxCol = 5;
int maxRow = 7;
//int d = 150;
float pageMargin = 5;
  
  
int points = 120;
int c = 15;
int k = 10;

void setup() {
  size(640, 480);
  minim = new Minim(this);
  player = minim.loadFile("Mr_Grinch.mp3");
  player.loop();
  fft = new FFT( player.bufferSize(), player.sampleRate());
  fft.linAverages(1);
  
  colorMode(HSB, 360, 100, 100);
  background(184, 100, 76);
  frameRate(10);
  
}
  void draw() {
  background(0, 100, 66);
fft.forward( player.mix );



  float xSpacing = (width - (2*pageMargin)) / maxCol;
  float ySpacing = (height - (2*pageMargin)) / maxRow;
  

  
  
   float r = 100;
  
  //random snowflakes 1
  fill(47, 100, 90);
  noStroke();
  for (int h = 0; h < 15; h++) { 
    pushMatrix();
    translate(random(width), random(height));
  beginShape();
  float noiseCount = 0;
  for (int i = 0; i < points; i++) {
    float randomValue;
    if (i % 2 == 1) randomValue = -noise(noiseCount);
    else randomValue = noise(noiseCount);
    float vertexX = sin(radians(i * (360/points))) * (k + (randomValue*10));
    float vertexY = cos(radians(i * (360/points))) * (k + (randomValue*10));
    vertex(vertexX, vertexY);
    noiseCount += 0.2;
  }
  endShape();
popMatrix(); 
  }
  //random snowflakes 2
  fill(0, 0, 100);
  noStroke();
  for (int j = 0; j < 30; j++) { 
    pushMatrix();
    translate(random(width), random(height));
  beginShape();
  float noiseCount = 0;
  for (int i = 0; i < points; i++) {
    float randomValue;
    if (i % 2 == 1) randomValue = -noise(noiseCount);
    else randomValue = noise(noiseCount);
    float vertexX = sin(radians(i * (360/points))) * (c + (randomValue*10));
    float vertexY = cos(radians(i * (360/points))) * (c + (randomValue*10));
    vertex(vertexX, vertexY);
    noiseCount += 0.2;
  }
  endShape();
popMatrix();  
}
  

  //big heart
  
  strokeWeight(4);
  stroke(0, 100, 50);
  for (int i = 0; i < fft.avgSize(); i++) { 
    
    float d = fft.getAvg(i) * 200;
    
      pushMatrix();
      translate(width/2, height/2);
      fill(360, 100, 0);
        beginShape();
          vertex(0, -d*0.4);
          bezierVertex(d * 0.2, -d * 0.9, d * 0.7, -d * 0.8, d*0.9, -d*0.45);
          bezierVertex(d * 1.1, -d * 0.1, d, d * 0.2, d*0.60, d*0.45);
          bezierVertex(d * 0.5, d * 0.5, d * 0.1, d * 0.6, 0, d);
          bezierVertex(-d * 0.1, d * 0.6, -d * 0.5, d * 0.5, -d*0.60, d*0.45);
          bezierVertex(-d, r * 0.2, -d * 1.1, -d * 0.1, -d*0.9, -d*0.45);
          bezierVertex(-d * 0.7, -d * 0.8, -d * 0.2, -d * 0.9, 0, -d*0.4);
        endShape();
      popMatrix();
  }
  
  //small heart
  noStroke();
      pushMatrix();
      translate(width/2, height/2);
      //fill(0, 100, 95);
      fill(142, 100, 58);
        beginShape();
          vertex(0, -r*0.4);
          bezierVertex(r * 0.2, -r * 0.9, r * 0.7, -r * 0.8, r*0.9, -r*0.45);
          bezierVertex(r * 1.1, -r * 0.1, r, r * 0.2, r*0.60, r*0.45);
          bezierVertex(r * 0.5, r * 0.5, r * 0.1, r * 0.6, 0, r);
          bezierVertex(-r * 0.1, r * 0.6, -r * 0.5, r * 0.5, -r*0.60, r*0.45);
          bezierVertex(-r, r * 0.2, -r * 1.1, -r * 0.1, -r*0.9, -r*0.45);
          bezierVertex(-r * 0.7, -r * 0.8, -r * 0.2, -r * 0.9, 0, -r*0.4);
        endShape();
      popMatrix();
   
   endRecord(); 
      
    }


