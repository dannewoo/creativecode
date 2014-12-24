int numFrames = 3;
int frame = 0;
PImage[] images = new PImage[numFrames];

void setup() {
size(900, 900);
colorMode(HSB, 360, 100, 100);
background(360);
frameRate(15);
images[0] = loadImage("mudkip.png");
images[1] = loadImage("marshtomp.png");
images[2] = loadImage("swampert.png");
}

void draw() {
background(255);

//flip through images
if (keyPressed && key == 'a') {
  frame++;
}
if (frame == numFrames){
  frame = 0;
}
imageMode(CENTER);
image(images[frame], width/2, height/2);

//colors
if (mousePressed == true){
 noStroke();
 fill(mouseX, mouseY, 200, 100);
 ellipse(mouseX, mouseY, 30, 30); 
}
}
