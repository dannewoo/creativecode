var points = 120;
var d = 100;

function setup() {
  createCanvas(600, 400);
  background(255);
  translate(width/2, height/2);
  fill(0);

  beginShape();
  for (var i = 0; i < points; i++) {
    var randomValue;
    if (i % 2 == 1) randomValue = -random(0, d/2);
    else randomValue = random(0, d);
    var vertexX = sin(radians(i * (360/points))) * (d + randomValue);
    var vertexY = cos(radians(i * (360/points))) * (d + randomValue);
    vertex(vertexX, vertexY);
  }
  endShape();
}