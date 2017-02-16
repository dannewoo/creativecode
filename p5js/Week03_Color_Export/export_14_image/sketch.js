var rectSize = 130;
var origColor = 80;

function setup() {
	var c = createCanvas(600,400);
	rectMode(CENTER);
	background(255);
	colorMode(HSB, 360, 100, 100);

	noStroke();
	fill(origColor, 80, 80);
	rect(width/2 - rectSize/2, height/2, rectSize, rectSize);
	fill((origColor + 180) % 360, 80, 80);
	rect(width/2 + rectSize/2, height/2, rectSize, rectSize);
	// Give the file a name.
	// You can export a jpg or gif.
	saveCanvas(c, 'myCanvas', 'jpg');
}










