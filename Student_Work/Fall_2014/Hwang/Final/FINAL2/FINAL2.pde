PImage[][] img;
int[] x,y;
color[] c;
String fileLoc;
int speed = 200;
Button philip, wegg, porter;
int buttonWidth, buttonHeight;
int artistChosen;
PFont buttonFont;
int randImg;
int startX, startY, imgW, imgH;

void setup(){
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
  
  c = new color[speed];
  x = new int[speed];
  y = new int[speed];
  
  buttonWidth = 300;
  buttonHeight = 150;
  
  philip = new Button((width/2) - buttonWidth/2, round((0.25 * height) - buttonHeight/2), buttonWidth, buttonHeight);
  wegg = new Button((width/2) - buttonWidth/2, round((0.5 * height) - buttonHeight/2), buttonWidth, buttonHeight);
  porter = new Button((width/2) - buttonWidth/2, round((0.75 * height) - buttonHeight/2), buttonWidth, buttonHeight);
  
  artistChosen = -1;
  
  textFont(buttonFont);
  textSize(30);
  
  randImg = round(random(2));
}

void draw(){
//  background(200);
  
  if(artistChosen == -1){
    philip.drawButton();
    wegg.drawButton();
    porter.drawButton();
    pushMatrix();
    fill(60);
    text("PHILIP", width/2, round((0.25 * height)));
    text("WEGG", width/2, round((0.5 * height)));
    text("PORTER", width/2, round((0.75 * height)));
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
    for(int i = 0; i < speed; i++){
      x[i] = round(random(startX, startX + 200));
      y[i] = round(random(startY, startY + 200));
      c[i] = img[artistChosen][randImg].get(x[i], y[i]);
      
      stroke(c[i], 50);
      point(width/2 + ((startX + 100 - x[i]) * 3), height/2 + ((startY + 100 - y[i]) * 3));
    }
    popMatrix();
  }

  
}
