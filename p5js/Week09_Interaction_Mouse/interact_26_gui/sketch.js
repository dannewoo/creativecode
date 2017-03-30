var brush = 0;
var bx = 20;
var by = 20;
var bw = 50;
var bh = 20;
var by2 = by + bh + 10;
var b1, b2;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  // Create a new interface class for each button and brush.
  b1 = new Interface(bx, by, bw, bh, color(100, 0, 0), color(255, 0, 0), 0, 20);
  b2 = new Interface(bx, by2, bw, bh, color(255), color(100), 1, 40);
}

function draw() {
  // Draw the button and brush to the canvas.
  b1.button();
  b1.brush();
  b2.button();
  b2.brush();
}

// Create a interface class with the button and the brush functions inside.
// Passing in a x, y, width, height, button color, button hover color, brush value and brush size.
function Interface(x, y, w, h, c1, c2, b, bSize) {
  this.button = function() {
    if((mouseX > x) && (mouseX < x + w) && (mouseY > y) && (mouseY < y + h) && mouseIsPressed) {
      fill(c1);
      brush = b;
    } else {
      fill(c2);
    }
    rect(x, y, w, h);
  }
  this.brush = function() {
    if(((mouseX < x) || (mouseX > x + w) || (mouseY < y) || (mouseY > y + h)) && brush == b && mouseIsPressed) {
      if (b == 0) fill(255, 0, 0, 50);
      if (b == 1) fill(255, 50);
      ellipse(mouseX, mouseY, bSize, bSize);
    }
  }
}
