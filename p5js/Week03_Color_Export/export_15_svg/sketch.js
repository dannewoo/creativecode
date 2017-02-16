// This example uses the SVG export library found here: 
// https://github.com/runemadsen/p5-svg-test

var rectSize = 130;
var origColor = 80;

function setup() {
	createCanvas(600,400,SVG);
	rectMode(CENTER);
	background(255);
	colorMode(HSB, 360, 100, 100);

	noStroke();
	fill(origColor, 80, 80);
	rect(width/2 - rectSize/2, height/2, rectSize, rectSize);
	fill((origColor + 180) % 360, 80, 80);
	rect(width/2 + rectSize/2, height/2, rectSize, rectSize);
	save();
}









