var letters = "";

function setup() {
  createCanvas(600, 400);
  background(0);
  textSize(60);
  textAlign(CENTER);
  fill(255);
}

function draw() {
  background(0);
  text(letters, width/2, 75);
}

function keyTyped() {
  letters = letters + key;
}

function keyPressed() {
  if (keyCode == 8) {
    if (letters.length > 0) {
      letters = letters.substring(0, letters.length-1);
    }
  }
}