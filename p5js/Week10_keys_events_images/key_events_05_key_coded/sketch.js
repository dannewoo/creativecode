var x, y;
var move = 2;
var d = 20;

function setup() {
  createCanvas(600, 400);
  rectMode(CENTER);
  x = width/2;
  y = height/2;
  background(0);
  noStroke();
  fill(255);
}

function draw() {
  background(0);
  // Move the rect using the arrow keys
  // keyCodes in clude BACKSPACE, DELETE, ENTER, RETURN, TAB, ESCAPE, 
  // SHIFT, CONTROL, OPTION, ALT, UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW
  if (keyCode == UP_ARROW) {
    y -= move;
  } else if (keyCode == DOWN_ARROW) {
    y += move; 
  } else if (keyCode == LEFT_ARROW) {
    x -= move;
  } else if (keyCode == RIGHT_ARROW) {
    x += move;
  }
  // If the rect is off screen bring it back
  if (x > width + d) x = -d;
  if (x < -d) x = width + d;
  if (y > height + d) y = -d;
  if (y < -d) y = height + d;
  rect(x, y, d, d);
}