function setup() {
  // Setup the 3D environment using the WEBGL renderer
  createCanvas(600, 400, WEBGL);
  background(0);
  // fill(200);
}

function draw() {
  background(0);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  box(100, 100, 100);
}