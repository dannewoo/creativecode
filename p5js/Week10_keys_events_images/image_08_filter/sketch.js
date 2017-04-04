var img;

function setup() {
  createCanvas(600, 400);
  background(255);
  img = loadImage("images/tree.jpg");
}

function draw() {
  image(img, 0, 0, width, height);
  var l = map(mouseX, 0, width, 0, 20);
  // BLUR, POSTERIZE, THRESHOLD, INVERT, GRAY, ERODE, DILATE
  filter(BLUR, l);
}