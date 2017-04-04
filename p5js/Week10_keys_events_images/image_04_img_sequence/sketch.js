var numFrames = 6;
var frame = 0;
var images = new Array(numFrames);

function setup() {
  createCanvas(600, 400);
  frameRate(15);
  background(255);
  images[0] = loadImage("images/dove01.png");
  images[1] = loadImage("images/dove02.png");
  images[2] = loadImage("images/dove03.png");
  images[3] = loadImage("images/dove04.png");
  images[4] = loadImage("images/dove05.png");
  images[5] = loadImage("images/dove06.png");
}

function draw() {
  background(255);
  frame++;
  if (frame == numFrames) {
    frame = 0;
  }
  image(images[frame], mouseX - 75, mouseY - 108);
}