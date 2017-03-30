function setup() {
  createCanvas(600, 400);
  background(0);
  stroke(255);
}

function draw() {
  translate(mouseX, mouseY);
}

function mouseDragged() {
  for(var i = 0; i < 10; i++) {
    strokeWeight(i);
    point(0, i * -10);
  }
}