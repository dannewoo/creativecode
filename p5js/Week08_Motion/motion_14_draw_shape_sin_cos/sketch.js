var points = 1;
var speed = 0.025;
var d = 150;

function setup() {
  createCanvas(600, 400);
  background(255);
}

function draw() {
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
  points = points + speed;
  if (points > 10 || points < 1) {
    speed = speed * -1;
  }
}