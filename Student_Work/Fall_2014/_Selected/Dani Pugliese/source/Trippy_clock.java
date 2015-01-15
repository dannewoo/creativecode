import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Trippy_clock extends PApplet {



public void setup() {
  size(displayWidth, displayHeight);
  background(0);
  noStroke();
  rectMode(CENTER);
}

public void draw() {
  float h = map((hour()%12), 0, 12, 0, 360);
  float m = map(minute(), 0, 60, 0, 360);
  float s = map(second(), 0, 60, 0, 360);
  float c = map(second(), 0, 60, 100, 255);
  background(c, 255-c, 130); 
  fill(0, 80); 
  ellipse(width/2, height/2, 20, 20);
  ellipse(width/2, height/2, 350, 350);
  //Hours
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(h));
  ellipse(0, -150, 25, 25);
  popMatrix();
  //Minutes
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(m));
  rect(0, -150, 25, 25);
  popMatrix();
  //Seconds
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(s));
  pushMatrix();
  translate(0, -150);
  triangle(0, -13, 13, 13, -13, 13);
  popMatrix();
  popMatrix();
  
  //random circles
  int opacity = 50;
  int circleD = 250;
int circleQ = 150;
frameRate(1);

  fill(0, 100, 82, 90);
ellipse(random(width),random(height), 80, 80);

fill(39, 100, 100, 50);
ellipse(random(width), random(height), circleD, circleD);

fill(276, 0, 13, 90);
ellipse(random(width - 2) + circleQ/2, random(height - 2), circleQ, circleQ);
println(frameRate);
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "Trippy_clock" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
