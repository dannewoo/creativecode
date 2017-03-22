var c = 0;      
var cdir = 2;  

function setup() {
  createCanvas(600,400);
  background(0,0,0);
}

function draw() {
  background(c,0,255);
  c = c + cdir;
  if (c < 0 || c > 255) {
    cdir *= -1;
  }
}