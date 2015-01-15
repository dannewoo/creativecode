import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import de.looksgood.ani.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class HW6_KineticForms_v2 extends PApplet {



int amountOfPoints = 20;

PVector[] points = new PVector[amountOfPoints];
PVector[] targets = new PVector[points.length];

float[] sinPos = new float[points.length];
float[] cosPos = new float[points.length];
float[] colors = new float[points.length];

float actionTime1 = 1;
float actionTime2 = 3;
float actionTime3 = 6;

float[] swingRange = new float[points.length];
float maxRadius;
float sinRange;
float cosRange;
float swingSpeed = 0.05f;
float circleRadius = 30;
float alpha;
float plusRadius;

public void setup() {
  size(displayWidth, displayHeight, P2D);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 90);
  
  maxRadius = height/2;
  
  for(int i = 0; i < points.length; i++){
    points[i] = new PVector(width/2, height + circleRadius);
    targets[i] = new PVector(width/2, height + circleRadius);
    
    sinPos[i] = sin(radians(i * (180/points.length)));
    cosPos[i] = cos(radians(i * (180/points.length))); //sin(map(i, 0, points.length, 0, TWO_PI));
    colors[i] = map(i, 0, points.length, 0, 360);
    
    swingRange[points.length - i - 1] = i * (maxRadius/points.length);
    println("swingRange[" + i + "] is " + swingRange[i]);
  }
  
  Ani.init(this);
}

public void draw(){
  pushMatrix();
  noStroke();
  fill(0, 0, 90, 30);
  rect(0, 0, width, height);
  popMatrix();
  //background(0, 0, 90);
  
  if (frameCount == 60 * actionTime1){
    for(int i = 0; i < points.length; i++){
      targets[i].y = height - ((i+0.5f) * (height/(points.length)));
    }
  }
  
  sinRange = sin(radians((swingSpeed * frameCount)%points.length * (360/points.length)));
  cosRange = cos(radians((swingSpeed * frameCount)%points.length * (360/points.length)));
  
  if (frameCount >= 60 * actionTime2){
    for(int i = 0; i < points.length; i++){
      targets[i].x = width/2 + (sinPos[i] * sinRange * swingRange[i]);
      alpha = (cosRange * cosPos[i] * 50);
    }
  }
  
//  if (frameCount == 60 * actionTime3){
//    for(int i = 0; i < points.length; i++){
//      targets[i].y = -height - ((i+0.5) * (height/(points.length)));
//    }
//  }
  
  for(int i = 0; i < points.length; i++){
    Ani.to(points[i], 1.0f, "x", targets[i].x);
    Ani.to(points[i], 1.0f, "y", targets[i].y);
  }
  
  
  for(int i = 0; i < points.length; i++){
    plusRadius = (sinPos[i] * alpha);
    pushMatrix();
    noStroke();
    fill(colors[i], 50, 80, 50 + (sinPos[i] * alpha));
    ellipse(points[i].x, points[i].y, circleRadius + (0.3f * plusRadius) , circleRadius + (0.3f * plusRadius));
    fill(colors[i], 50, 80, 50 + (-sinPos[i] * alpha));
    ellipse(-points[i].x + width, points[i].y, circleRadius + (-0.3f * plusRadius), circleRadius + (-0.3f * plusRadius));
    popMatrix();
  }
  swingSpeed += 0.0001f;
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "HW6_KineticForms_v2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
