var points = 6;
var d = 100;

function setup() {
  createCanvas(600, 400);
  background(255);
  translate(width/2, height/2);
  fill(0);

  beginShape();
  for (var i = 0; i < points; i++) {
    var vertexX = sin(radians(i * (360/points))) * d;
    var vertexY = cos(radians(i * (360/points))) * d;
    vertex(vertexX, vertexY);
  }
  endShape();
}