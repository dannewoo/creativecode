//stars
float[] size, posX, posY, posZ;
float xOffset = 3.0, speed = 0.001;
int stars = 200;
float angle;

//audio
import ddf.minim.*;
import ddf.minim.analysis.*;
//import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;
FFT fftLin;
FFT fftLog;

float height3;
float height23;
float spectrumScale = 4;

//noise
float increment = 0.01;
float zoff = 0.0;
float zincrement = 0.02;
float noiseScale = 0.5;

PImage img;

///////////////////////////////////////////////////////////
///////////////////////////SETUP///////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

void setup() {
  size(800, 600, P3D);
  //colorMode(HSB, 360, 100, 100);
  height3 = height/3;
  height23 = 2*height/3;
  


//mapping out random size and locations of stars
  size = new float[stars];
  posX = new float[stars];
  posY = new float[stars];
  posZ = new float[stars];
  for (int i = 0; i < stars; i++) {
    size[i] = random(1, 2);
    posX[i] = random(-width, width);
    posY[i] = random(-height, height);
    posZ[i] = random(-width, width);
  }

//  frameRate(60);

  minim = new Minim(this);
  player = minim.loadFile("Explosions_in_the_sky_-_First_breath_aft.mp3", 1024);
  player.play();
  player.loop();
  
  fftLin = new FFT( player.bufferSize(), player.sampleRate());
  fftLin.linAverages(30);
  fftLog = new FFT(player.bufferSize(), player.sampleRate());
  fftLog.logAverages(22, 3);
  
  for (int i = 0; i < stars; i++) {
    fill(random(140, 255));
    sphere(size[i]);
  }
  

  
}

///////////////////////////////////////////////////////////
/////////////////////////DRAW//////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

void draw() {
  //frameRate(20);
  
  fftLin.forward(player.left);
  fftLog.forward(player.right);
//  img = loadImage("FINAL_bg.jpg");
//  image(img, 0, 0);  
  
  //background(0);
 loadPixels();
float xoff = 0.0;
for (int x = 0; x < width; x++) {
  xoff += increment;
  float yoff = 0.0;
  for (int y = 0; y < height; y++) {
    yoff += increment;
    float bright = random(20, 35);
    pixels[x + y * width] = color(bright, bright, bright);
  }
}
updatePixels();
zoff += zincrement;

////planet
//pushMatrix();
//translate(width/2, height/2, 0);
//rotateX(angle);
//rotateY(angle);
//rotateZ(angle);
//noStroke();
//fill(255, 141, 75, 50);
//lights();
//pushMatrix();
//sphere(70);
////filter(BLUR, 5);
//popMatrix();
//popMatrix();



//FREQUENCIES
pushMatrix();
pushMatrix();
frameRate(60);
//rotateY(radians(angle));
//rotateX(radians(angle));
 noFill();
  for(int k = 0; k < fftLin.specSize(); k++) {
   stroke(200);
   stroke(252, 182, 41);
   //stroke(57, random(200,255), 253); //BLUE
  // stroke(57, 255, 253);
    ellipse(width/2, height/2, height3, height3 - fftLin.getBand(k)*spectrumScale);
  }
popMatrix();

pushMatrix();
//frameRate(60);
//rotateY(radians(angle));
//rotateX(radians(angle));
 noFill();
  for(int k = 0; k < fftLin.specSize(); k++) {
   stroke(100);
   stroke(252, 182, 41); //YELLOW
    ellipse(width/2, height/2, height3*2, height3*2 - fftLin.getBand(k)*spectrumScale);
  }
popMatrix();

pushMatrix();
//frameRate(60);
//rotateY(radians(angle));
//rotateX(radians(angle));
 noFill();
  for(int k = 0; k < fftLin.specSize(); k++) {
   stroke(150); //GRAY
//   stroke(57, 255, 253);
    ellipse(width/2, height/2, height3*1.5, height3*1.5 - fftLin.getBand(k)*spectrumScale);
  }
popMatrix();
popMatrix();

  //STARS
xOffset+=speed*1.25; 
pushMatrix();
translate(width/2, height/2, 0);
rotateY(radians(angle));
rotateX(radians(angle));
angle += 0.2;
for (int i = 0; i < stars; i++) {
  fill(random(140, 255));
  pushMatrix();
  translate(posX[i], posY[i], posZ[i]);
  sphere(size[i]);
  popMatrix();
}
popMatrix();

 
}
