function setup() {
	// Creates a canvas based on the width and height of the browser window.
	createCanvas(window.innerWidth, window.innerHeight);	
	// Creates a canvas the width and height of your screen.
	// createCanvas(displayWidth, displayHeight);
	background(255);
	noStroke();
	colorMode(HSB, 360, 100, 100, 100);
}

// Endless loop similar to a for loop
function draw() {
	var randomsize = random(10, 50);
	fill(random(0, 360), 80, 100, random(100));
	ellipse(random(0, width), random(0, height), randomsize, randomsize);
}