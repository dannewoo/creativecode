var r = 0;
var angle = 0;
var d = 25;
var x, y;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
}

function draw() {
  background(255);
  x = r * cos(angle);
  y = r * sin(angle);
  fill(0, 255 - r);
  ellipse(x+width/2, y+height/2, d, d); 
  angle += 0.05;
  r += 0.2;
  if (x > width/2) { 
    r = 0; 
    angle = 0; 
  }
}