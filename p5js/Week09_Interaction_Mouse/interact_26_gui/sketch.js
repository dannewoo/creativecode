var brush = true;
var bx = 20;
var by = 20;
var bw = 50;
var bh = 20;
var by2 = by + bh + 10;
var mPressed = false;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
}

function draw() {
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush == true && mPressed == true) {
    fill(255, 0, 0, 50);
    ellipse(mouseX, mouseY, 20, 20);
  }
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush == false && mPressed == true) {
    fill(255, 50);
    ellipse(mouseX, mouseY, 40, 40);
  }
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mPressed == true) {
    fill(255, 0, 0);
    brush = true;
  } else {
    fill(100, 0, 0);
  }
  rect(bx, by, bw, bh);
  if ((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mPressed == true) {
    fill(255);
    brush = false;
  } else {
    fill(100);
  }
  rect(bx, by2, bw, bh);
}

function mousePressed() {
	mPressed = true;
}

function mouseReleased() {
	mPressed = false;
}