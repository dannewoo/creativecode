// This uses the toxiclibs.js library to your HTML file.
// It can be found here: http://haptic-data.com/toxiclibsjs/

function setup() {
	createCanvas(600,400);
	colorMode(HSB, 1, 1, 1);
	background(1);
	rectMode(CENTER);

	var rectSize = 130;

	// first pick red base color
	var color1 = toxi.color.TColor.newHSV(0, 1, 1);

	// then find colors on each side of this color by adding/subtracting
	// a specific number of degrees on the hue scale. I use 30 here, as the
	// standard color wheel has 12 colors, and 360/12 is 30.
	var color2 = toxi.color.TColor.newHSV(color1.hue() - (200/360), 1, 1);
	var color3 = toxi.color.TColor.newHSV(color1.hue() + (200/360), 1, 1);

	// draw color 2
	noStroke();
	fill(color2.hue(), color2.saturation(), color2.brightness());
	rect(width/2 - rectSize, height/2, rectSize, rectSize); 

	// draw color 1
	fill(color1.hue(), color1.saturation(), color1.brightness());
	rect(width/2, height/2, rectSize, rectSize);

	// draw color 3
	fill(color3.hue(), color3.saturation(), color3.brightness());
	rect(width/2 + rectSize, height/2, rectSize, rectSize);
}










