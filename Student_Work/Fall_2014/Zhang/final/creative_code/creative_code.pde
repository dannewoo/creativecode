import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

Minim minim;
AudioSample s01, s02;
int circleSize = 50;
float origColor = random(360);

  int x=300;
  int y=300;
  float h=60;
  float w=60;
 
  
void setup() {
  size(600,600);
  colorMode(HSB, 360, 100, 100,100);
  background(origColor, 50, 50);
  smooth();
  noStroke();
 
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  
  cx = width / 2;
  cy = height / 2;

  translate(circleSize/2, circleSize/2);
  rectMode(CENTER);
  frameRate(10);
  ellipseMode(RADIUS);
   minim = new Minim(this);
  s01 = minim.loadSample("sample01.mp3");
  s02 = minim.loadSample("sample04.mp3");
 
 
 
}
float r=20,angle=0;
void draw(){
background(0);
fill(random(360),80,100,random(50,100));
//fill(random(255),100,255,50);
noStroke();
ellipse(random(width),random(height),40,40);
println(frameRate);
  for(int x =0; x<width; x+=circleSize){
    for(int y=0; y<height; y+=circleSize){
      fill(0);
  ellipse(x,y,circleSize/2, 50);
  rect(x, y, 40, circleSize/2);
  ellipse(x,y,50, circleSize/2); 
  rect(x,y,30, circleSize/2);
    }
}



 float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  // Draw the hands of the clock
  stroke(random(255),100,255,50);
  strokeWeight(2);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(3);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(5);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
  
  
  strokeWeight(4);
  stroke(255-r);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    //float r=20,angle=0;
    float x=r*cos(angle);
  float y=r*sin(angle);
    //float angle = radians(a);
    //float x = cx + cos(angle) * secondsRadius;
    //float y = cy + sin(angle) * secondsRadius;
    //vertex(x, y);
     ellipse(width/2+x,height/2+y,50,50);
     ellipseMode(CENTER);
  angle=angle+0.1;
  r=r+0.3;

  }
  endShape();

noStroke();
fill(0,80,random(20,100));
ellipse(300,300,60,60);

//triangle(280, 255, 280, 350, 350, 300);
fill(0,80,random(20,100));
ellipse(x,y,h,w);
}
 
void mousePressed(){
  
  if ((mouseX > x) && (mouseX < x + w) && 
      (mouseY > y) && (mouseY < y + h))            
  {
    s01.trigger();
    s02.trigger();  
  }
}

