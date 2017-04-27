function setup() {
  createCanvas(600, 400, WEBGL);
  background(0);
  noStroke();
  fill(200);
}

function draw() {
  background(0);
  push();
  translate(0, 0, -500);
  rotateX(map(mouseY, 0, height, 0, PI));
  rotateZ(map(mouseX, 0, width, 0, PI));
  box(400, 100, 400);
  sphere(150);
  pop();
}