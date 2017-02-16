var rectSize = 130;
var colorRange = 30;
var origColor = 240;

function setup() {
	createCanvas(600,400);
	rectMode(CENTER);
	background(255);
	colorMode(HSB, 360, 100, 100);

	noStroke();
	fill(origColor, 80, 80);
	rect(width/2 - rectSize, height/2, rectSize, rectSize);
	fill((origColor + colorRange) % 360, 80, 80);
	rect(width/2, height/2, rectSize, rectSize);
	fill((origColor + colorRange*2) % 360, 80, 80);
	rect(width/2 + rectSize, height/2, rectSize, rectSize);
}










