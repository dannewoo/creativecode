var maxDistance;

function setup() {
  createCanvas(600, 400);
  rectMode(CENTER);
  background(0);
  stroke(255);
  noFill();
  maxDistance = dist(0, 0, width, height);
}

function draw() {
  background(0);
  for(var i = 0; i < width + 20; i+=20){
    for(var j = 0; j < height + 20; j+=20){
      var mouseDist = dist(mouseX, mouseY, i, j);
      var d = (mouseDist / maxDistance) * 100;
      rect(i, j, d, d);
    }
  }
}