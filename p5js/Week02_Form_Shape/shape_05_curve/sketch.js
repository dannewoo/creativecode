function setup() {
	createCanvas(600,400);
	translate(width/2 - 150, 0);
	beginShape();
	fill(100);
	vertex(0, 100);
	// First point sets the curve
	// Must have at least 4 points
	curveVertex(150, 600);
	curveVertex(0, 100);
	curveVertex(150, 100);
	curveVertex(300, 100);
	// And last point sets the curve
	curveVertex(150, 600);
	vertex(0, 100);
	endShape();
}










