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

public class FINAL2 extends PApplet {

PImage[][] img;
int[] x,y;
int[] c;
String fileLoc;
int speed = 200;
Button philip, wegg, porter, back;
int buttonWidth, buttonHeight;
int artistChosen;
PFont buttonFont;
int randImg;
int startX, startY, imgW, imgH;

public void setup(){
  size(displayWidth, displayHeight);
  background(255);
  strokeWeight(40);
  textAlign(CENTER, CENTER);
  
  buttonFont = loadFont("testFont200.vlw");
  
  img = new PImage[3][3];
  
  
  img[0][0] = loadImage("philip1.jpg");
  img[0][1] = loadImage("philip2.jpg");
  img[0][2] = loadImage("philip3.jpg");
  img[1][0] = loadImage("wegg1.jpg");
  img[1][1] = loadImage("wegg2.jpg");
  img[1][2] = loadImage("wegg3.jpg");
  img[2][0] = loadImage("porter1.jpg");
  img[2][1] = loadImage("porter2.jpg");
  img[2][2] = loadImage("porter3.jpg");
  
  c = new int[speed];
  x = new int[speed];
  y = new int[speed];
  
  buttonWidth = 300;
  buttonHeight = 150;
  
  philip = new Button((width/2) - buttonWidth/2, round((0.25f * height) - buttonHeight/2), buttonWidth, buttonHeight);
  wegg = new Button((width/2) - buttonWidth/2, round((0.5f * height) - buttonHeight/2), buttonWidth, buttonHeight);
  porter = new Button((width/2) - buttonWidth/2, round((0.75f * height) - buttonHeight/2), buttonWidth, buttonHeight);
  back = new Button(10, 10, 80, 30);
  
  artistChosen = -1;
  
  randImg = round(random(2));
}

public void draw(){  
  if(artistChosen == -1){
    philip.drawButton();
    wegg.drawButton();
    porter.drawButton();
    pushMatrix();
    textFont(buttonFont);
    textSize(30);
    fill(60);
    text("PHILIP", width/2, round((0.25f * height)));
    text("WILLIAM", width/2, round((0.5f * height)));
    text("ELLIOT", width/2, round((0.75f * height)));
    popMatrix();
    if(philip.clicked){
      artistChosen = 0;
      imgW = img[0][randImg].width;
      imgH = img[0][randImg].height;
      startX = round(random(imgW - 200));
      startY = round(random(imgH - 200));
      fill(255);
      rect(0,0,width,height);
    } else if (wegg.clicked){
      artistChosen = 1;
      imgW = img[1][randImg].width;
      imgH = img[1][randImg].height;
      startX = round(random(imgW - 200));
      startY = round(random(imgH - 200));
      fill(255);
      rect(0,0,width,height);
    } else if (porter.clicked){
      artistChosen = 2;
      imgW = img[2][randImg].width;
      imgH = img[2][randImg].height;
      startX = round(random(imgW - 200));
      startY = round(random(imgH - 200));
      fill(255);
      rect(0,0,width,height);
    }
  } else {
    pushMatrix();
    back.drawButton();
    textFont(buttonFont);
    textSize(16);
    fill(60);
    text("RESET", 50, 25);
    for(int i = 0; i < speed; i++){
      x[i] = round(random(startX, startX + 200));
      y[i] = round(random(startY, startY + 200));
      c[i] = img[artistChosen][randImg].get(x[i], y[i]);
      
      stroke(c[i], 50);
      point(width/2 + ((startX + 100 - x[i]) * 3), height/2 + ((startY + 100 - y[i]) * 3));
    }
    popMatrix();
  }
  if(back.clicked) {
    setup();
  }
}
class Button{
  int x, y;
  float w, h;
  boolean clicked;
  int off, hover, on;
  Button(int _x, int _y, int _w, int _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    clicked = false;
    off = color(0);
    hover = color(130);
    on = color(240);
  }
  
  public void drawButton(){
    pushMatrix();
    noStroke();
    if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
      fill(hover);
      if(mousePressed){
        if(!clicked){
          clicked = true;
        } else {
          clicked = false;
        }
        delay(100);
      }
    } else {
      if(clicked){
        fill(on);
      } else {
        fill(off);
      }
    }
    rect(x, y, w, h);
    popMatrix();
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "FINAL2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
