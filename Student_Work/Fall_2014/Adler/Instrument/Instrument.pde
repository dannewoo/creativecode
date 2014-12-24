import ddf.minim.*;

Minim minim;
AudioSample s01, s02;
int c;


void setup() {
  size(600, 400);
  c = 0;
  minim = new Minim(this);
  s01 = minim.loadSample("PED_-_top_of_the_world.mp3");
  s02 = minim.loadSample("Multifaros_-_01_-_The_Boss.mp3");
  }
void draw() {
  background(250);
  stroke(255);
  fill(241,5,71);
  ellipse(150, 200, 200, 200);
  fill(3,218,246);
  ellipse(450, 200, 200, 200);
  
}
void mousePressed() {
  if ( mouseX < width/2) {
    //if first rect clicked play first song
   ellipse(150, 200, 200, 200);
    fill(255);
    c = 36; 
    s02.stop();
    s01.trigger();
  } if (mouseX > width/2) {
    // If Second rect clicked play 2nd song
    ellipse(450, 200, 200, 200);
  //rect(width/2, 0, width/2, height);
   fill(0); 
    c = 36*2; 
    s01.stop();
    s02.trigger();
  }
}
 


