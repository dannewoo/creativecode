PImage img;
import ddf.minim.*;
int totalPts = 300;
float steps = totalPts + 1;
int sideLength = 100;
int sidePoint = 25;

Minim minim;
AudioSample s1, s2, s3, s4;
int c;

void setup() {
  size(displayWidth, displayHeight);
  stroke(255);;
  colorMode(HSB, 360, 100, 100);
  c = 0;
 frameRate(5);

  
  minim = new Minim(this);
  s1 = minim.loadSample("1.mp3");
  s2 = minim.loadSample("2.mp3");
  s3 = minim.loadSample("3.mp3");
  s4 = minim.loadSample("4.mp3");
  }

void keyPressed() {
  if ( key == 'a' ) {
    c = 36; 
    s1.trigger();
  }
  if ( key == 's' ) {
    c = 36*2; 
    s2.trigger();
  }
  if ( key == 'd' ) {
    c = 36*3; 
    s3.trigger();
  }
  if ( key == 'f' ) {
    c = 36*4; 
    s4.trigger();
  }
}

  void draw() {
  background(0);
    background(0);
  if (keyPressed && (key == 'a' || key == 'A')) {
     float rand = 0;
     for  (int i = 1; i < steps; i++) {
     point( (width/steps) * i, (height/2) + random(-rand, rand) );
     rand += random(-5, 5);
   }
  }
   if (keyPressed && (key == 's' || key == 'S')) {
    for (int i = 0; i < width; i++) {
    float r = random(255);
    stroke(r);
    line(i, 0, i, height);
   }
  }
   if (keyPressed && (key == 'd' || key == 'D')) {
     noStroke();
     float randomsize = random(50, 500);
     fill(random(0, 360), 80, 100, random(100));
     ellipse(random(0, width), random(0, height), randomsize, randomsize);
  }
 
   if (keyPressed && (key == 'f' || key == 'F')) {
     float rand = 0;
     float randomsize = random(10, 50);
     for  (int i = 1; i < steps; i++) {
     ellipse((width/steps) * i, (height/2) + random(-rand, rand), randomsize, randomsize);
     rand += random(-1, 5);
    }
   }
  }
   

 
 
 
