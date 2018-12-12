var capture;

function setup() {
  createCanvas(320, 240);
  noStroke();
  capture = createCapture(VIDEO);
  capture.size(320, 240);
  capture.hide();
  pixelDensity(20);
}

function draw() {
  background(255);
  s = 20;
  for (var x = 0; x < capture.width/s; x++) {
    for (var y = 0; y < capture.height/s; y++) {
      var c = capture.get(x*s, y*s);
      tint(c);
      image(capture, x*s, y*s, s, s);
    }
  }
}