// Global Variables
int a= 220;
int w= 100; 
int h=100; 
int x=-w; 
int speed=5;
//Constants 
 void setup () {
   size (displayWidth, displayHeight);
   background(255);
   noStroke();
   colorMode(HSB,360,100,100,100);
   //frameRate(15);
 }
 //Endless loop similar ot for loop
 void draw() {
   background(360);
   x= x + speed;
  beginShape();
  strokeWeight(0);
  fill(random(360), 80, 100, random(50, 200));
 //fill(random(360), 80, 100, random(50, 200));
  vertex(x,180); 
  vertex(x+70,265); 
  vertex(x+27,245); 
  vertex(x+40,320); 
  vertex(x,220); 
  vertex(x+35,235); 
  vertex (x,180); 
  endShape ();
  strokeWeight(6);
  line(x,height/2-h/2,x+140,height/2-h/2); 
  stroke(0);
  strokeWeight(6);
  fill(360);
  ellipse(x,height/2 - h/2, 100, 100);
  strokeWeight(6);
  ellipse(x+140,height/2-h/2, 100, 100); 
   if (x>width) {
     x= -w;
   }
 }

