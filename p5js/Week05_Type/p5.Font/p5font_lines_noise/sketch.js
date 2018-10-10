var font;
function preload() {
  font = loadFont('fonts/ShadowsIntoLight.ttf');
}

var points;
function setup() {
  createCanvas(300, 400);
  stroke(0);
  points = font.textToPoints('p5', 0, 0, 10, {
    sampleFactor: 15
  });

  background(255);
  beginShape();
  translate(100, 100);
  var noiseCount = 0;
  noiseDetail(5);
  for (var i = 1; i < points.length; i++) {
    strokeWeight(noise(noiseCount)*10);
    var vec1 = points[i];
    var vec2 = points[i - 1];      
    line(vec1.x * 10, vec1.y * 10, vec2.x * 10, vec2.y * 10);
    noiseCount += 0.5;
  }
  endShape();
  
}