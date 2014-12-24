//import minim library
import ddf.minim.*;

int numFrames = 12;
int frame = 0;
int x = 50;
int y = height/2 - -145;
int z = 80;
PImage[] images = new PImage[numFrames];
float foxPosition;
PImage b1;
int tailLength = 60;

Minim minim;
AudioPlayer song1, song2, song3, song4, song5, song6;

void setup() {
  size(780, 470);
  minim = new Minim(this);
//  background(b1);
  frameRate(20);

  //load fox images into Processing
  b1 = loadImage("bg.jpg");
  images[0] = loadImage("Fox Frame 1.png");
  images[1] = loadImage("Fox Frame 2.png");
  images[2] = loadImage("Fox Frame 3.png");
  images[3] = loadImage("Fox Frame 4.png");
  images[4] = loadImage("Fox Frame 5.png");
  images[5] = loadImage("Fox Frame 6.png");
  images[6] = loadImage("Fox Frame 7.png");
  images[7] = loadImage("Fox Frame 8.png");
  images[8] = loadImage("Fox Frame 9.png");
  images[9] = loadImage("Fox Frame 10.png");
  images[10] = loadImage("Fox Frame 11.png");
  images[11] = loadImage("Fox Frame 12.png");   

  song1 = minim.loadFile("andreonate-lopez-rhythm-crate.wav");
  song2 = minim.loadFile("gzglitchers-beat-box-kick.wav");
  song3 = minim.loadFile("Beatbox Flute Mario.wav");
  song4 = minim.loadFile("KRNFX - Finest Beatbox Routine.wav");
  song5 = minim.loadFile("5th Element - The Planet.wav");
  song6 = minim.loadFile("WHAT DOES THE FOX SAY2.wav");

  foxPosition = width/2 - 510;
  
  
}

void draw() {
  background(b1);

    if(foxPosition > 50 - tailLength && foxPosition < 130 - tailLength) {
       song1.play();
    } else {
      song1.pause();
    }

    if (foxPosition > 210 - tailLength && foxPosition < 290 - tailLength) {
       song2.play();
    } else {
      song2.pause();
    }
     
    if(foxPosition > 360 - tailLength && foxPosition < 430 - tailLength) {
       song3.play();
    } else {
      song3.pause();
    }
      
    if(foxPosition > 510 - tailLength && foxPosition < 570 - tailLength) {
       song4.play();
    } else {
      song4.pause();
    }
      
    if(foxPosition > 660 - tailLength && foxPosition < 740 - tailLength) {
       song5.play();
    } else {
      song5.pause();
    }

    if(foxPosition > 767 - tailLength && foxPosition < 850 - tailLength) {
       song6.play();
    } else {
      song6.pause();
    }

  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == UP) {
      } else if (keyCode == LEFT) {
        foxPosition -= 12;
        if(frame == 0){
          frame += 12;
        } else if(frame != 0) {
          frame--;
        }
      } else if (keyCode == RIGHT) {
        foxPosition += 12;
        frame++;
      }
    }
  }

  //Ground that the fox is standing on
  pushMatrix();
  fill(0,165,210);
  noStroke();
  rect(0, 440, 800, 10);
  popMatrix();

  //Rects for the wolf to hit
  pushMatrix();
  fill(255,0,0, 100);
  noStroke();
  rect(x, y, z, z);
  popMatrix();

  pushMatrix();
  fill(255,0,0, 90);
  noStroke();
  rect(x + 150, y, z, z);
  popMatrix();

  pushMatrix();
  fill(255,0,0, 80);
  noStroke();
  rect(x + 300, y, z, z);
  popMatrix();

  pushMatrix();
  fill(255,0,0, 70);
  noStroke();
  rect(x + 450, y, z, z);
  popMatrix();

  pushMatrix();
  fill(255,0,0, 60);
  noStroke();
  rect(x + 600, y, z, z);
  popMatrix();

  //Rolling through all 12 frames and starting in a loop
  if (frame ==numFrames) {
    frame = 0;
  }
  println(frame);
  image(images[frame], foxPosition, 380);
}

void stop() {
  song1.close();
  song2.close();
  song3.close();
  song4.close();
  song5.close();
  song6.close();
  minim.stop();
  super.stop();
}
