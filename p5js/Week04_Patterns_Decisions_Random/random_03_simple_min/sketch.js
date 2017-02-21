function setup() {
	// random(100) gives us a float between 20 and 100
	var rectSize = random(20, 100);

	createCanvas(400, 400);
	colorMode(HSB, 360, 100, 100);
	var x = random(width - rectSize);
	var y = random(height - rectSize);
	// random(270, 360) gives us a float between 270 and 360
	background(random(270, 360), 100, 100);

	noStroke();
	// random(90, 180) gives us a float between 90 and 180
	fill(random(90, 180), 100, 100);
	rect(x, y, rectSize, rectSize);

	// Prints the random value to the console.
	print("Rect Size: " + rectSize);
}