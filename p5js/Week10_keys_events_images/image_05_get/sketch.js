var x, y;
var img;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  img = loadImage("images/tree.jpg");
}

function draw() {
  x = mouseX;
  y = mouseY;
  image(img, 0, 0, width, height);
  // Get the color of a pixel at the
  // mouse location on the image.
  var c = get(x, y);
  fill(c);
  ellipse(x, y, 100, 100);
}