PImage img;
import ddf.minim.*;

Minim minim;
AudioSample s1, s2, s3, s4, s5;
int c;

void setup() {
  size(600, 400);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  c = 0;

  
  minim = new Minim(this);
  s1 = minim.loadSample("1.mp3");
  s2 = minim.loadSample("2.mp3");
  s3 = minim.loadSample("3.mp3");
  s4 = minim.loadSample("4.mp3");
  s5 = minim.loadSample("5.mp3");
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
  if ( key == 'g' ) {
    c = 36*5; 
    s5.trigger();
  }
}
  void draw() {
  background(0);
   if (keyPressed && (key == 'a' || key == 'A')) {
      img = loadImage("1.jpg");
      image(img, 0, 0, width, height);
   }
   if (keyPressed && (key == 's' || key == 'S')) {
      img = loadImage("2.jpg");
      image(img, 0, 0, width, height);
   }
   if (keyPressed && (key == 'd' || key == 'D')) {
      img = loadImage("3.jpg");
      image(img, 0, 0, width, height);
   }
   if (keyPressed && (key == 'f' || key == 'F')) {
      img = loadImage("4.jpg");
      image(img, 0, 0, width, height);
   }
   if (keyPressed && (key == 'g' || key == 'G')) {
      img = loadImage("5.jpg");
      image(img, 0, 0, width, height);
   }
 }

