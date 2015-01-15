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

public class HW9_3D_v2 extends PApplet {

String currentSeason;
Grid grd;
PVector zeroPoint, foc;
AniCamera cam;

Tree[] evr;
int treeColor;
PVector[] treeLocation;

Ground g1;
Ground snow;

public void setup(){
  size(displayWidth, displayHeight, P3D);
  colorMode(HSB, 360, 100, 100, 100);
  background(360);
  
  zeroPoint = new PVector(0, 0, 0);
  grd = new Grid(zeroPoint);
  cam = new AniCamera();
  cam.setPos(-200, -250, -200);
  
  snow = new Ground(64, 100, 40);
  snow.generate();
  
  g1 = new Ground(64, 100, 40);
  g1.generate();
  
  evr = new Tree[50];
  treeLocation = new PVector[evr.length];
  treeColor = color(140, 50, 50);
  
  for (int i = 0; i < evr.length; i++){
    evr[i] = new Tree();
    treeLocation[i] = new PVector(0,0,0);
    treeLocation[i].x = i * PApplet.parseInt(50 * random(-1, 1));
    treeLocation[i].z = i * PApplet.parseInt(50 * random(-1, 1));
    evr[i].setHeight(100);
    evr[i].setColor(treeColor);
    evr[i].setLocation(treeLocation[i]);
  }
  
  foc = new PVector(0, -50, 0);
  
  
}

public void draw(){
  background(360);
//  directionalLight(0, 0, 100, 1, -1, 1);
  ambientLight(0, 0, 100);
  cam.enable();
  cam.setFocus(foc);
  
  
  
//  grd.showAxes(100);
//  grd.showPlane(100, 25, "XZ");
  
  cam.setRotation(300, 600, "RIGHT");
  for(int i = 0; i < evr.length; i++){
    evr[i].plant();
  }
  g1.spawn();
}
class AniCamera{
  PVector pos;
  PVector foc;
  AniCamera(){
    pos = new PVector(100, -100, 100);
    foc = new PVector(0 ,0 ,0);
  }
  
  public void enable(){
    camera(pos.x, pos.y, pos.z, foc.x, foc.y, foc.z, 0, 1, 0);
  }
  
  public void setPos(PVector _pos){
    pos = _pos;
  }
  
  public void setPos(float posX, float posY, float posZ){
    pos.x = posX;
    pos.y = posY;
    pos.z = posZ;
  }
  
  public void setFocus(PVector _foc){
    foc = _foc;
  }
  
  public void setFocus(float focX, float focY, float focZ){
    foc.x = focX;
    foc.y = focY;
    foc.z = focZ;
  }
  
  public PVector getLocation(){
    return pos;
  }
  
//  void moveTo(PVector newLoc, int frameStart, int frameEnd){
//    PVector oldLoc = new PVector(pos.x, pos.y, pos.z);
//    
//  }

  public void setRotation(float radius, float revLength, String direction){
    float angle = radians(map(frameCount, 0, revLength, 0, 360));
    if(direction == "LEFT"){
      pos.x = radius * cos(angle); 
      pos.z = radius * sin(angle);
    } else if (direction == "RIGHT"){
      pos.x = radius * cos(-angle);
      pos.z = radius * sin(-angle);
    }
  }
}
class Grid{
  PVector center;
  
  Grid(PVector cntr){
    center = cntr;
  }
  
  public void showPlane(int w, int interval, String _plane){
    pushMatrix();
    translate(center.x, center.y, center.z);
    strokeWeight(0.5f);
    stroke(0);
    if(_plane == "XZ"){
      for(int i = -w; i <= w; i += interval){
        line(-w, 0, i, w, 0, i);
        line(i, 0, -w, i, 0, w);
      }
    } else if(_plane == "XY"){
      for(int i = -w; i <= w; i += interval){
        line(-w, i, 0, w, i, 0);
        line(i, -w, 0, i, w, 0);
      }
    } else if(_plane == "YZ"){
      for(int i = -w; i <= w; i += interval){
        line(0, -w, i, 0, w, i);
        line(0, i, -w, 0, i, w);
      }
    }
    popMatrix();
  }
  
  public void showAxes(float l){
    pushMatrix();
    strokeWeight(1);
    stroke(0,80, 100);
    line(center.x, center.y, center.z, center.x + l, center.y, center.z);
    stroke(120,80, 100);
    line(center.x, center.y, center.z, center.x, center.y + l, center.z);
    stroke(240,80, 100);
    line(center.x, center.y, center.z, center.x, center.y, center.z + l);
    popMatrix();
  }
}
class Ground{
  int res;
  int interval;
  float amplitude;
  Ground(int _res, int _interval, float _amp){
    res = _res;
    interval = _interval;
    amplitude = _amp;
  }
  
  PVector[][] terraVertex;
  
  public void generate(){
    terraVertex = new PVector[res+1][res+1];
    for(int i = 0; i <= res; i++){
      for(int j = 0; j <= res; j++){
        terraVertex[i][j] = new PVector(0, 0, 0);
        terraVertex[i][j].x = -((res/2) - i) * interval + random(-amplitude/2, amplitude/2);
        terraVertex[i][j].z = -((res/2) - j) * interval + random(-amplitude/2, amplitude/2);
        terraVertex[i][j].y = random(-amplitude/2, amplitude/2);
      }
    }
  }
  
  public void spawn(){
    pushMatrix();
    strokeWeight(0.3f);
    stroke(0);
    fill(120, 5, 70);
    for(int i = 0; i < res; i++){
      beginShape(TRIANGLE_STRIP);
      for(int j = 0; j <= res; j++){
        vertex(terraVertex[i][j].x, terraVertex[i][j].y, terraVertex[i][j].z);
        vertex(terraVertex[i+1][j].x, terraVertex[i+1][j].y, terraVertex[i+1][j].z);
      }
      endShape();
    }
    popMatrix(); 
  }
  
}
class Tree{
  float tHeight;
  PVector loc;
  int tColor;
  Tree(){
  }
  
  public void randomize(float _size){
    tHeight = _size * random(0.95f, 1.2f);
  }
  
  public void setHeight(float _th){
    tHeight = _th;
  }
  
  public void setLocation(PVector _loc){
    loc = _loc;
  }
  
  public void setLocation(float locX, float locY, float locZ){
    loc.x = locX;
    loc.y = locY;
    loc.z = locZ;
  }
  
  public void setColor(int _tc){
    tColor = _tc;
  }
  
  public void plant(){

      //drawCylinder(float topRadius, float bottomRadius, float topY, float bottomY)
      //Leaves
      //pushMatrix();
      fill(tColor);
      stroke(0);
      strokeWeight(0.3f);
      drawCylinder(0, tHeight * 0.1f, tHeight * 1.1f, tHeight * 0.95f, loc);
      drawCylinder(tHeight * 0.05f, tHeight * 0.1f, tHeight * 0.96f, tHeight * 0.95f, loc);
      
      drawCylinder(tHeight * 0.05f, tHeight * 0.2f, tHeight * 0.96f, tHeight * 0.775f, loc);
      drawCylinder(tHeight * 0.125f, tHeight * 0.2f, tHeight * 0.78f, tHeight * 0.775f, loc);
      
      drawCylinder(tHeight * 0.125f, tHeight * 0.3f, tHeight * 0.775f, tHeight * 0.54f, loc);
      drawCylinder(tHeight * 0.225f, tHeight * 0.3f, tHeight * 0.55f, tHeight * 0.54f, loc);
      
      drawCylinder(tHeight * 0.225f, tHeight * 0.45f, tHeight * 0.54f, tHeight * 0.22f, loc);
      drawCylinder(tHeight * 0.075f, tHeight * 0.45f, tHeight * 0.23f, tHeight * 0.22f, loc);
      //popMatrix();
      
      //pushMatrix();
      fill(35, 50, 40);
      drawCylinder(tHeight * 0.075f, tHeight * 0.08f, tHeight * 0.23f, tHeight * 0.175f, loc);
      drawCylinder(tHeight * 0.08f, tHeight * 0.1f, tHeight * 0.175f, tHeight * 0.075f, loc);
      drawCylinder(tHeight * 0.1f, tHeight * 0.15f, tHeight * 0.075f, 0, loc);
      drawCylinder(tHeight * 0.15f, tHeight * 0.2f, 0, tHeight * -0.04f, loc);
      //popMatrix();
  }
}
public void drawCylinder(float topRadius, float bottomRadius, float topY, float bottomY, PVector location){
  float angle = 0;
  float increment = TWO_PI / 7;
  
  beginShape(QUAD_STRIP);
  for (int i = 0; i < 8; i++){
    vertex(location.x + topRadius * cos(angle), location.y - topY, location.z + topRadius * sin(angle));
    vertex(location.x + bottomRadius * cos(angle), location.y - bottomY, location.z + bottomRadius * sin(angle));
    angle += increment;
  }
  endShape();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "HW9_3D_v2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
