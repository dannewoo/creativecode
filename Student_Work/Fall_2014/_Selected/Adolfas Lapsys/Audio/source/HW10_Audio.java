import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class HW10_Audio extends PApplet {





// Declare the variable/array names to use in the sketch
Minim min;
AudioOutput out;
Oscil osc1, osc2, osc3, osc4, osc5, osc6, osc7, osc8;
boolean[] play;
int currentBeat;
Button[][] trigger;

public void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100, 100);
  background(270);
  noStroke();
  
  // Initialize Minim under the name "min"
  min = new Minim(this);
  
  // Initialize min's audio output under the name "out"
  out = min.getLineOut();
  
  // Create 8 oscillators;
  // Assign a different frequency to each;
  // Set all volume levels to 0 (for now);
  // Set wave type "SINE" for each of them;
  osc1 = new Oscil(Frequency.ofPitch( "G#4" ), 0, Waves.SINE);   // G#4
  osc2 = new Oscil(Frequency.ofPitch( "B4" ), 0, Waves.SINE);    // B4
  osc3 = new Oscil(Frequency.ofPitch( "D#5" ), 0, Waves.SINE);   // D#5
  osc4 = new Oscil(Frequency.ofPitch( "F#5" ), 0, Waves.SINE);   // F#5
  osc5 = new Oscil(Frequency.ofPitch( "G#5" ), 0, Waves.SINE);   // G#5
  osc6 = new Oscil(Frequency.ofPitch( "B5" ), 0, Waves.SINE);    // B5
  osc7 = new Oscil(Frequency.ofPitch( "D#6" ), 0, Waves.SINE);   // D#6
  osc8 = new Oscil(Frequency.ofPitch( "F#6" ), 0, Waves.SINE);   // F#6
  
  // Create an array of eight booleans. This will represent which part of the loop is being played;
  play = new boolean[8];
  
  // Create an 8x8 array of buttons (each have an on/off state);
  trigger = new Button[8][8];
  
  // Route all the oscillators to the main audio output ("out");
  osc1.patch(out);
  osc2.patch(out);
  osc3.patch(out);
  osc4.patch(out);
  osc5.patch(out);
  osc6.patch(out);
  osc7.patch(out);
  osc8.patch(out);
  
  // Set coordinates and sizes for all the buttons (check the Button tab);
  for (int i = 0; i < 8; i++){
    play[i] = false;
    for (int j = 0; j < 8; j++){
      trigger[i][j] = new Button(60 + 5 + 60*i, 60 + 5 + 60*j, 50, 50);
    }
  }
  
}

public void draw() {
  background(270);
  
  // Considering an 8-note long loop at 120BPM, return the number of the beat (0-7) at a point in time;
  currentBeat = (frameCount/15)%8;  

  // Draw a dark vertical bar on the screen that indicates the location of beat;
  pushMatrix();
  for (int i = 0; i < 8; i++){
    if (currentBeat == i){
      fill(100, 20);
    } else {
      fill(200, 20);
    }
    rect(60 + 5 + 60*i, 0, 50, height);
  }
  popMatrix();
  
  // Enable and show the buttons on the screen. Set the grayscale colors for their "off", "hover", and "on" states;
  for (int i = 0; i < 8; i++){
    for (int j = 0; j < 8; j++){
      trigger[i][j].enable();
      trigger[i][j].colors(110, 220, 330);
      trigger[i][j].show();
    }
  }
  
  // Set "play" boolean values to "true" if their number in the array matches up with the number of the beat;
  for (int i = 0; i < 8; i++){
    for (int j = 0; j < 8; j++){
      if (currentBeat == i){
        if (trigger[i][j].isOn()){
          play[7-j] = true;
        } else if (!trigger[i][j].isOn()){
          play[7-j] = false;
        }
      }
    }
  }
  
  
  // Create oscillator volume change triggers.
  // Essentially, if a button is on and the "play" boolean value corresponding to the same column is true, the oscillators mapped to those buttons will play.
  if(play[0]){
    osc1.setAmplitude(0.20f);
  } else {
    osc1.setAmplitude(0);
  }
  if(play[1]){
    osc2.setAmplitude(0.22f);
  } else {
    osc2.setAmplitude(0);
  }
  if(play[2]){
    osc3.setAmplitude(0.24f);
  } else {
    osc3.setAmplitude(0);
  }
  if(play[3]){
    osc4.setAmplitude(0.26f);
  } else {
    osc4.setAmplitude(0);
  }
  if(play[4]){
    osc5.setAmplitude(0.28f);
  } else {
    osc5.setAmplitude(0);
  }
  if(play[5]){
    osc6.setAmplitude(0.30f);
  } else {
    osc6.setAmplitude(0);
  }
  if(play[6]){
    osc7.setAmplitude(0.32f);
  } else {
    osc7.setAmplitude(0);
  }
  if(play[7]){
    osc8.setAmplitude(0.34f);
  } else {
    osc8.setAmplitude(0);
  }
}


  // For testing purposes:
  // Keys 1 through 8 will play the according sounds mapped to the oscillators with the same number.
  // (Only works when the rest of the conditionals are disabled)
  
// void keyPressed(){
//   if (key == '1'){
//     osc1.setAmplitude(0.4);
//   } else if (key == '2'){
//     osc2.setAmplitude(0.4);
//   } else if (key == '3'){
//     osc3.setAmplitude(0.4);
//   } else if (key == '4'){
//     osc4.setAmplitude(0.4);
//   } else if (key == '5'){
//     osc5.setAmplitude(0.4);
//   } else if (key == '6'){
//     osc6.setAmplitude(0.4);
//   } else if (key == '7'){
//     osc7.setAmplitude(0.4);
//   } else if (key == '8'){
//     osc8.setAmplitude(0.4);
//   }
// }

// void keyReleased(){
//   if (key == '1'){
//     osc1.setAmplitude(0);
//   } else if (key == '2'){
//     osc2.setAmplitude(0);
//   } else if (key == '3'){
//     osc3.setAmplitude(0);
//   } else if (key == '4'){
//     osc4.setAmplitude(0);
//   } else if (key == '5'){
//     osc5.setAmplitude(0);
//   } else if (key == '6'){
//     osc6.setAmplitude(0);
//   } else if (key == '7'){
//     osc7.setAmplitude(0);
//   } else if (key == '8'){
//     osc8.setAmplitude(0);
//   }
// }
  //  Create a Button class.
  //  The button construction syntax is the same you'd use for a regular rectangle:
  //    Button buttonName = new Button(x, y, width, height);
  //
  //  Button functions (in draw loop):
  //    buttonName.enable();                 -- enables the mouse actions for the button. Mouse1 = on, mouse2 = off;
  //    buttonName.colors(off, hover, on);   -- sets colors for the off/hover/on states of the button (grayscale only);
  //    buttonName.show();                   -- actually show the buttons. the colors will be the ones declared using .colors function;
  //    buttonName.isOn();                   -- returns "true" or "false", depending if the button is on or off, respectively;


class Button{
  int w, h, leftBorder, rightBorder, topBorder, bottomBorder;
  boolean on;
  float onColor, offColor, hoverColor;
  Button(int _x, int _y, int _w, int _h){
    w = _w;
    h = _h;
    leftBorder = _x;
    rightBorder = _x + _w;
    topBorder = _y;
    bottomBorder = _y + _h;
    on = false;
  }
  
  public void enable(){
    if(mousePressed == true && mouseX > leftBorder && mouseX < rightBorder && mouseY > topBorder && mouseY < bottomBorder){
      if(mouseButton == LEFT){
        on = true;
      } else if(mouseButton == RIGHT){
        on = false;
      }
    }
  }
  
  public void colors(float _c1, float _c2, float _c3){
    offColor = _c1;
    hoverColor = _c2;
    onColor = _c3;
  }
  
  public void show(){
    pushMatrix();
    if (on){
      fill(onColor);
    } else if(!on){
      if(mouseX > leftBorder && mouseX < rightBorder && mouseY > topBorder && mouseY < bottomBorder){
        fill(hoverColor);
      } else {
        fill(offColor);
      }
    }
    rect(leftBorder, topBorder, w, h);
    popMatrix();
  }
  
  public boolean isOn(){
    return on;
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "HW10_Audio" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
