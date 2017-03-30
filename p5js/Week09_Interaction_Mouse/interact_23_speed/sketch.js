var speed = 0;
var easing = 0.03;

function setup() {
  createCanvas(600, 400);
  background(0);
  stroke(255);
}

function draw() {
  var target = dist(mouseX, mouseY, pmouseX, pmouseY);
  speed += (target - speed) * easing;
  if (mouseIsPressed) {
    strokeWeight(speed/2);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  print(speed);
}

// Alternative option but not as smooth
// function mouseDragged() {
//     strokeWeight(speed/2);
//     line(mouseX, mouseY, pmouseX, pmouseY);
// }