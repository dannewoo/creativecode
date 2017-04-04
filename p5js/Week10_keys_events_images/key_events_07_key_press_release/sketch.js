var drawT = false;

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  textSize(200);
  textAlign(CENTER);
  fill(255);
}

function draw() {
  background(0);
  if (drawT == true) {
    text("T", width/2, height/2 + 75);
  }
}

function keyPressed() {
  if (key == 'T' || key == 't') {
    drawT = true;
  }
}

function keyReleased() {
  drawT = false;
}