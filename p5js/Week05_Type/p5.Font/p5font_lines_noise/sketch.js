var font;
function preload() {
  font = loadFont('fonts/ShadowsIntoLight.ttf');
}

var points;
function setup() {
  createCanvas(300, 400);
  stroke(0);
  points = font.textToPoints('p5', 100, 100, 100, {
    sampleFactor: 0.05
  });

  background(255);
  var noiseCount = 0;
  noiseDetail(5);
  for (var i = 1; i < points.length; i++) {
    strokeWeight(noise(noiseCount)*10);
    var vec1 = points[i];
    var vec2 = points[i - 1];      
    line(vec1.x, vec1.y, vec2.x, vec2.y);
    noiseCount += 0.5;
  }
  
}