var capture;

function setup() {
  createCanvas(320, 240);
  ellipseMode(CORNER);
  noStroke();
  capture = createCapture(VIDEO);
  capture.size(320, 240);
  capture.hide();
}

function draw() {
  background(255);
  s = 10;
  for (var x = 0; x < capture.width/s; x++) {
    for (var y = 0; y < capture.height/s; y++) {
      var c = capture.get(x*s, y*s);
      fill(c);
      ellipse(x*s, y*s, s, s);
    }
  }
}