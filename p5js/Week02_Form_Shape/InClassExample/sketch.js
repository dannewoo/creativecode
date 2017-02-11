var black = 150;
var text = "This is text";
var decimal = 5.5;

function setup() {
	// This is just like size() in processing.
	createCanvas(640, 480);
	rectMode(CENTER);
	// ellipseMode(CORNER);
	background(black);
	// fill(0);
	noFill();
	strokeWeight(3);
	stroke(255);
	ellipse(width/2,height/2,80,80);
	fill(black);
	push();
		translate(width/2, height/2);
		// rotate(PI/4);
		rotate(radians(45));
		scale(1.5,1.5);
		rect(0, 0, 20, 20);
		// rect(width/2,height/2,20,20);
	pop();
	// strokeWeight(100);
	point(100,100);
	line(0,height,width,0);
	push();
		translate(200,200);
		fill(0);
		triangle(50,0,100,100,0,100);
	pop();
	push();
		translate(width - 100, 100)
		quad(10,20,75,0,100,100,0,80);
	pop();
	push();
		translate(200, 400);
		beginShape();
			vertex(50,0);
			vertex(100,50);
			vertex(100,150);
			vertex(0,150);
			vertex(0,50);
			vertex(50,0);
		endShape();
		beginShape();
			curveVertex(84, 91);
			curveVertex(84, 91);
			curveVertex(68, 19);
			curveVertex(21, 17);
			curveVertex(32, 100);
			curveVertex(32, 100);
		endShape();
	pop();

}










