import ddf.minim.*;
Minim minim;
AudioPlayer player;

Boolean rectOver = true;
//Boolean brush = true;
int bx = 438;
int by = 750;
int bw = 100;
int bh = 100;
int by2 = by + bh + 10;

float x= 0;
float y=0;
int d= 20;

int count=1;

int quantity = 300;
float [] xPosition = new float[quantity];
float [] yPosition = new float[quantity];
int [] flakeSize = new int[quantity];
int [] direction = new int[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 10;


void setup() {
  size(displayHeight, displayWidth, P3D);
  background(0);
  noStroke();
  mouseX=-d;
  mouseY=-d;


  minim = new Minim(this);
  player = minim.loadFile("Do You Want To Build A Snowman Frozen Lyrics.mp3");

  for (int i = 0; i < quantity; i++) {
    flakeSize[i] = round(random(minFlakeSize, maxFlakeSize));
    xPosition[i] = random(0, width);
    yPosition[i] = random(0, height);
    direction[i] = round(random(0, 1));
  }

  noStroke();
  frameRate(30);
  noStroke();
  smooth();
}

void draw() {
  background(0);
  
//MusicPlay
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    player.play();  
    rectOver = true;
  }
  
//SnowManFace
  fill(211, 95, 0);
  ellipse(445, 700, 75, 10);
  fill(255, 255, 255);
  rect(470, 695, 20, 10);
  fill(45, 28, 14);
  ellipse(480, 680, 12, 12);
  ellipse(445, 680, 10, 10);

//SnowFall
  for (int i = 0; i < xPosition.length; i++) {
    fill(255);
    noStroke();

    ellipse(xPosition[i], yPosition[i], flakeSize[i], flakeSize[i]);

    if (direction[i] == 0) {
      xPosition[i] += map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    } else {
      xPosition[i] -= map(flakeSize[i], minFlakeSize, maxFlakeSize, .1, .5);
    }

    yPosition[i] += flakeSize[i] + direction[i]; 

    if (xPosition[i] > width + flakeSize[i] || xPosition[i] < -flakeSize[i] || yPosition[i] > height + flakeSize[i]) {
      xPosition[i] = random(0, width);
      yPosition[i] = -flakeSize[i];
    }
  }
 
//lighting
if(mousePressed) {
  lights();
  }


//BuildSnowMan
  pushMatrix();
  translate(500, height*0.78, -200);
  fill(255);
  noStroke();
  sphere(120);
  popMatrix();

  pushMatrix();
  translate(500, height*0.65, -200);
  fill(255);
  noStroke();
  sphere(90);
  popMatrix();

  pushMatrix();
  translate(500, height*0.55, -200);
  fill(255);
  noStroke();
  sphere(70);
  popMatrix();
  
  pushMatrix();
  translate(500, height*0.65, -200);
  strokeWeight(1);
  stroke(45, 28, 14);
  line(10, 20, 10, 50, 600, 50);
  popMatrix();

  pushMatrix();
  translate(0, height*0.90, -200);
  fill(255);
  noStroke();
  box(2000, 20, 600);
  popMatrix();
}

