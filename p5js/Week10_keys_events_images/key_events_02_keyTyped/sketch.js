function setup() {
  createCanvas(600, 400);
  background(0);
  fill(255);
  textSize(300);
  textAlign(CENTER);
}

function draw() {

}

function keyTyped() {
  background(0);
  text(key, width/2, height/2 + 75);
}
