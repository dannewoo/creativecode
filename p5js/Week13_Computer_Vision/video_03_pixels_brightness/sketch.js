var capture;

function setup() {
  createCanvas(320, 240);
  ellipseMode(CORNER);
  noStroke();
  capture = createCapture(VIDEO);
  capture.size(320, 240);
  // capture.hide();
}

function draw() {
  background(0);
  s = 8;
  for (var x = 0; x < capture.width/s; x++) {
    for (var y = 0; y < capture.height/s; y++) {
      var c = capture.get(x*s, y*s);
      var b = (0.2126*c[0] + 0.7152*c[1] + 0.0722*c[2]);
      fill(255);
      ellipse(x*s, y*s, b/40, b/40);
    }
  }
}