var teapot;

function setup() {
  createCanvas(600, 400, WEBGL);
  background(0);
  teapot = loadModel("files/c3po_fixed.stl");
}

function draw() {
  background(0);
  var dirX = (mouseX / width - 0.5) * 2;
  var dirY = (mouseY / height - 0.5) * (-2);
  ambientLight(255, 0, 0);
  directionalLight(200, 200, 200, // Color
    dirX, dirY, -1); //X, Y, Z direction value between 0 and 1
  translate(0, 0, 100);
  model(teapot);
}