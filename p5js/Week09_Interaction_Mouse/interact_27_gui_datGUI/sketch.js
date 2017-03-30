// https://workshop.chromeexperiments.com/examples/gui/

var gui;
var color1 = [0, 28, 198, 50];
var radius = 40;

function setup() {
	createCanvas(600, 400);
	background(0);
	noStroke();
	gui = new dat.GUI();
	gui.addColor(this, 'color1');
	gui.add(this, 'radius', 5, 300);
}

function draw() {
	// background(0);
	fill(255);
	fill(color1);
	if (mouseIsPressed) {
		ellipse(mouseX, mouseY, radius, radius);		
	}
}