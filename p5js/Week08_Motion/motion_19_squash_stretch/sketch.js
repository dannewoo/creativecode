var speed = 0;
var w = 40;
var h = 60;
var y = 50;
var gravity = 0.5;
var squash, stretch, stretchd;

function setup() {
  createCanvas(400, 600);
  background(255);
  rectMode(CENTER);
  noStroke();
  squash = 0;
  stretch = 0;
  stretchd = 0;
}

function draw() {
  background(255);
  fill(0);
  y = y + speed;
  speed = speed + gravity;
  if (y > height - 100) {
    squash = squash + 30;
    stretch = stretch + 20;
    rect(width/2, y, w + squash, h - stretch);
  } else {
    stretchd = stretchd + 1;
    rect(width/2, y, w, h + stretchd);
  }  
  if (y > height) {
    speed = speed * -1;
    squash = squash * -1;
    stretch = stretch * -1;
    stretchd = stretchd * -1;
  }
  if (y < 50) {
    y = 50;
  }
}