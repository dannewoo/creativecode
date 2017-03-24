var s = 100;
var y = s/2;
var speed = 0;
var gravity = 0.2;  

function setup() {
  createCanvas(600,400);
  background(255);
  rectMode(CENTER);
  noStroke();
}

function draw() {
  background(255);
  // Add gravity to speed.
  speed = speed + gravity;
  // Add speed to location.
  y = y + speed;
  // When the rect reaches the bottom reverse direction.
  if (y > height - s/2) {
    // Multiplying by -0.95 instead of -1 slows the square each time
    // This is known as a "dampening" effect and is more realistic.
    speed = speed * -0.95;  
  }
  fill(0);
  rect(width/2, y, s, s);
}