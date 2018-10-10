var font;
function preload() {
  font = loadFont('fonts/ShadowsIntoLight.ttf');
}

var points;
function setup() {
  createCanvas(300, 400);
  stroke(0);
  points = font.textToPoints('p5', 100, 100, 100, {
    sampleFactor: 0.15
  });

  background(255);
  for (var i = 0; i < points.length; i++) {
    var p = points[i];
    var r = random(2, 10);
    ellipse(p.x, p.y, r, r);
  }
}