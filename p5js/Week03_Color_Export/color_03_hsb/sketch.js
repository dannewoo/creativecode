var rectSize = 130;

function setup() {
	createCanvas(600,400);
	background(255);
	noStroke();
	colorMode(HSB, 360, 100, 100);
	rectMode(CENTER);

	fill(0, 100, 100);
	rect(width/2 - rectSize, height/2, rectSize, rectSize);
	fill(120, 100, 100);
	rect(width/2, height/2, rectSize, rectSize);
	fill(240, 100, 100);
	rect(width/2 + rectSize, height/2, rectSize, rectSize);
}










