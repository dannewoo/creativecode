var font;
function preload() {
  font = loadFont('fonts/ShadowsIntoLight.ttf');
}

var points;
function setup() {
  createCanvas(300, 400);
  stroke(0);
  points = font.textToPoints('p5', 100, 100, 100, {
    sampleFactor: 1
  });

  background(255);
  beginShape();
  for (var i = 0; i < points.length; i++) {
    var r = random(-2, 2);
    var p = points[i];
    curveVertex(p.x + r, p.y + r);
  }
  endShape();
}