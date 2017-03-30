var maxDistance;

function setup() {
  createCanvas(600, 400);
  background(0);
  stroke(255);
  maxDistance = dist(0, 0, width, height);
}

function draw() {
  background(0);
  for(var i = 0; i < width + 20; i+=20){
    for(var j = 0; j < height + 20; j+=20){
      var mouseDist = dist(mouseX, mouseY, i, j);
      var a = map(mouseDist, 0, maxDistance, 0, 360);
      var s = map(mouseDist, 0, maxDistance, 1, 20);
      push();
      translate(i, j);
      strokeWeight(s);
      rotate(radians(a));
      line(-10, 0, 10, 0);
      pop();
    }
  }
}