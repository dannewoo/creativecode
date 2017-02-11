var circleSize = 100;
var rectSize = 100;
var triSize = 100;
var padding = 175;

function setup() {
	createCanvas(600,400);
	background(255);

	//draw shapes with fill color black
	fill(0);
	noStroke();
	//circle
	ellipse(padding, circleSize, circleSize, circleSize);
	//square
	rect(width - padding - rectSize/2, rectSize/2, rectSize, rectSize);
	//triangle
	push();
		translate(padding - triSize/2, height - padding);
		triangle(0, triSize, triSize/2, 0, triSize, triSize);
	pop();
	//quadrilateral
	push();
		translate(width - padding - 60, height - padding);
		quad(0, 10, 120, 0, 100, 70, 20, 100);
	pop();
}










