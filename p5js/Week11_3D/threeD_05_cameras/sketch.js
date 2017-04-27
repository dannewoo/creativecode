function setup() {
  createCanvas(600, 400, WEBGL);
  background(0);
}

function draw() {
  background(0);
  ambientLight(255, 0, 0);
  directionalLight(200, 200, 200, 0.25, 0.25, 1);
  var dirX = map(mouseX, 0, width, -100, 100);
  var dirY = map(mouseY, 0, height, -100, 100);
  // X, Y, Z
  camera(0, dirY, dirX);
  box(90, 90, 90);
}