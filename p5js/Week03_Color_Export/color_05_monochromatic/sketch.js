var rectSize = 150;

function setup() {
	createCanvas(600,400);
	rectMode(CENTER);
	background(255);
	noStroke();
	colorMode(HSB, 360, 100, 100);

	fill(240, 80, 100);
	rect(width/2 - rectSize, height/2, rectSize, rectSize);
	fill(240, 80, 70);
	rect(width/2, height/2, rectSize, rectSize);
	fill(240, 80, 40);
	rect(width/2 + rectSize, height/2, rectSize, rectSize);
}










