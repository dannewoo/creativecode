var points = 120;
var d = 100;

function setup() {
  createCanvas(600, 400);
  background(255);
  translate(width/2, height/2);
  fill(0);

  beginShape();
  var noiseCount = 0;
  for (var i = 0; i < points; i++) {
    var randomValue;
    if (i % 2 == 1) randomValue = -noise(noiseCount);
    else randomValue = noise(noiseCount);
    var vertexX = sin(radians(i * (360/points))) * (d + (randomValue*100));
    var vertexY = cos(radians(i * (360/points))) * (d + (randomValue*100));
    vertex(vertexX, vertexY);
    noiseCount += 0.2;
  }
  endShape();
}