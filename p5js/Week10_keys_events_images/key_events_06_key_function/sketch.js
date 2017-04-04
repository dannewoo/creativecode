function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  fill(255, 50);
}

function draw() {
  
}

function keyPressed() {
  var x = map(keyCode, 9, 192, 0, width);
  rect(x, 0, width/127, height);
}