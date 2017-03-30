var dragged = false;

function setup() {
  createCanvas(600, 400);
  background(0);
  stroke(255);
  strokeWeight(3);
}

function draw() {
  var x = mouseX;
  var y = mouseY;
  if (dragged == true) {
	  line(x, y, pmouseX, pmouseY);  	
  }
}

function mousePressed() {
	dragged = true;
}

function mouseReleased() {
	dragged = false;
}

// Alternative option but not as smooth
// function mouseDragged() {
//   var x = mouseX;
//   var y = mouseY;
//   line(x, y, pmouseX, pmouseY);   
// }