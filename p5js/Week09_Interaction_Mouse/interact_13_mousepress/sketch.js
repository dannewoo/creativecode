var x, y, w, h, c;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  w = 200;
  h = 150;
  x = width/2 - w/2;
  y = height/2 - h/2;
  c = color(255);
}

function draw() {
  background(0);
  fill(c)
  rect(x, y, w, h);
}

function mousePressed() {
  if ((mouseX > x) && (mouseX < x + w) && 
      (mouseY > y) && (mouseY < y + h)) {
    c = color(255, 0, 0);
  } else {
    c = color(255);
  }
}