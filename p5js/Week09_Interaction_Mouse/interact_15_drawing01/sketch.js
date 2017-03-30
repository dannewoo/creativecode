function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
}

function draw() {
  if (mouseIsPressed) {
	fill(255, 0, 0);
	ellipse(mouseX, mouseY, 20, 20);
  }
}

// Alternative is to use the mouseDragged function
// function mouseDragged() {
//   fill(255, 0, 0);
//   ellipse(mouseX, mouseY, 20, 20);
// }