var maxCol = 5;
var maxRow = 4;
var circleD = 60;

function setup() {
	createCanvas(600,400);
	noStroke();
	colorMode(HSB, 360, 100, 100);
	background(0, 0, 0);
	ellipseMode(CORNER);

	var xSpacing = (width/maxCol);
	var ySpacing = (height/maxRow);
	translate(30, 20);
	for (var x = 0; x < maxCol; x++) {
		for (var y = 0; y < maxRow; y++) {
			if (x == 3 && y == 2) {
				fill(0, 100, 100);
			} else {
				fill(0, 0, 100);
			}
			ellipse(x*xSpacing, y*ySpacing, circleD, circleD);
		}
	}
}










