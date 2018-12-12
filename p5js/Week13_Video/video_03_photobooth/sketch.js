var capture;
var count = 0;

function setup() {
  createCanvas(320, 240);
  capture = createCapture(VIDEO);
  capture.size(320, 240);
  capture.hide();
}

function draw() {
  background(255);
  image(capture, 0, 0);
}

function mousePressed() {
  save("myCanvas-" + count + ".jpg");
  count++;
}