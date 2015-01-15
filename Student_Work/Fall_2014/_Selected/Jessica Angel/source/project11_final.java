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

public class project11_final extends PApplet {

int frames = 15;
PGraphics pg[] = new PGraphics[frames];

public void setup() {
  size(displayWidth, displayHeight);
  //colorMode(HSB, 360, 100, 100);
  for(int i=0; i<frames; i++) {
    pg[i] = createGraphics(width, height);
    pg[i].beginDraw();
    pg[i].background(0xff0F283F);
    pg[i].stroke(255);
    pg[i].strokeWeight(3);
    pg[i].endDraw();
  }
}
public void draw() {
  int currFrame = frameCount % frames;
  if(mousePressed) {
    pg[currFrame].beginDraw();
    if (key == CODED)
      if (keyCode == LEFT) {
        pg[currFrame].stroke(0xffF7F74D);//yellow
      }else if(keyCode == RIGHT) {
        pg[currFrame].stroke(0xffF74DA3);//pink
      }else if(keyCode == UP) {
        pg[currFrame].stroke(0xff79E1FA);//blue
      }else if (keyCode == DOWN) {
        pg[currFrame].stroke(0xff9BFC8C);}//green   
    pg[currFrame].line(mouseX, mouseY, pmouseX + 3, pmouseY + 3);
    pg[currFrame].endDraw();
  }
  image(pg[currFrame], 0, 0);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "project11_final" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
