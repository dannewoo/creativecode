function setup() {
	createCanvas(600, 400);
	background(255);
	noStroke();

	//Two face objects with different values
	var f1 = new Face(width/2 - 100, height/2, 100, 150, random(255)); 
	var f2 = new Face(width/2 + 100, height/2, 150, 100, random(255)); 

	//Draw the head and/or face features function inside the class
	f1.head();
	f1.features();
	f2.head();
	f2.features();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
function Face(x, y, w, h, c) { 
	// Create multiple functions to use.
	this.features = function() { 
		fill(0, c, 0);
		ellipse(x - w/6, y - h/8, w/4, h/4);
		ellipse(x + w/6, y - h/8, w/4, h/4);
		ellipse(x, y + h/8, w/8, h/8);
		ellipse(x, y + h/3, w/8, h/8);
	} 
	this.head = function() {
		rectMode(CENTER);
		fill(c, 0, 0);
		rect(x, y, w, h);
	}
} 