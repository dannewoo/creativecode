var font;
function preload() {
  font = loadFont('fonts/ShadowsIntoLight.ttf');
}

var points;
function setup() {
  createCanvas(300, 400);
  stroke(0);
  points = font.textToPoints('p5', 0, 0, 10, {
    sampleFactor: 1
  });

  background(255);
  beginShape();
  translate(100, 100);
  for (var i = 0; i < points.length; i++) {
    var r = random(-2, 2);
    var p = points[i];
    curveVertex((p.x * 10) + r, (p.y * 10) + r);
  }
  endShape();
}