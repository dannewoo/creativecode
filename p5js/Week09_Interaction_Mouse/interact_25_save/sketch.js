var count = 1;
var c;

function setup(){
  c = createCanvas(600, 400);
  background(255);
  noStroke();
}

function draw() {
	if (mouseIsPressed) {
	    fill(255, 0, 0, 40);
	    ellipse(mouseX, mouseY, 30, 30);
	}
}

function keyPressed() {
  if (keyCode == 80) {
    saveCanvas(c, 'canvasName' + count, 'jpg');
    count++;
  }
}