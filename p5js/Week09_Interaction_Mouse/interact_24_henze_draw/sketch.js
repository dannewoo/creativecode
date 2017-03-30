var circleResolution = 15;
var circleRadius = 150;
var displaceAmount = 2;
var x = new Array(circleResolution);
var y = new Array(circleResolution);
var speed = 0;
var easing = 0.07;

function setup() {
  createCanvas(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  strokeWeight(0.75);
  noFill();
  background(360);
  var angle = radians(360/float(circleResolution));
  for (var i = 0; i < circleResolution; i++){
    x[i] = cos(angle*i) * circleRadius;
    y[i] = sin(angle*i) * circleRadius;  
  }
  mouseX = -circleRadius;
  mouseY = -circleRadius;
}

function draw() {
  var target = dist(mouseX, mouseY, pmouseX, pmouseY);
  speed += (target - speed) * easing;
  var c = map(speed, 0, 100, 0, 180);
  stroke(360-c, 80, 100, 30);
  // calculate new points
  if(mouseIsPressed) {
    for (var i = 0; i < circleResolution; i++){
      x[i] += random(-displaceAmount,displaceAmount);
      y[i] += random(-displaceAmount,displaceAmount);
    }
    translate(mouseX, mouseY);
    beginShape();
    // we need a start vertex point
    curveVertex(x[circleResolution-1], y[circleResolution-1]);
    // then draw all the points
    for (var i = 0; i < circleResolution; i++){
      curveVertex(x[i], y[i]);
    }
    // and two end points (the last is the control point)
    curveVertex(x[0], y[0]);
    curveVertex(x[1], y[1]);
    endShape();
  }
}