function setup() {
	// Have to round the random value to a whole number 
	// to make it an integer.
	// round() goes to the cloests whole number
	var rectSize = round(random(20, 100));

	createCanvas(400, 400);
	colorMode(HSB, 360, 100, 100);
	// ceil() goes to the next highest whole number.
	var x = ceil(random(width - rectSize));
	// floor() goes to the previous lowest whole number.
	var y = floor(random(height - rectSize));
	// random(270, 360) gives us a float between 270 and 360
	background(random(270, 360), 100, 100);

	noStroke();
	// random(90, 180) gives us a float between 90 and 180
	fill(random(90, 180), 100, 100);
	rect(x, y, rectSize, rectSize);

	// Prints the random value to the console.
	print("Rect Size: " + rectSize);
}