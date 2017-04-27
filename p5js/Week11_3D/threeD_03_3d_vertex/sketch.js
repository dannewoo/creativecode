var s = 100;

function setup() {
  createCanvas(600, 400, WEBGL);
  background(0);
}

function draw() {
  background(0);
  fill(255);
  rotateX(radians(frameCount));
  rotateZ(radians(frameCount));

  beginShape();
  vertex(-s, -s, -s);
  vertex(s, -s, -s);
  vertex(0, 0, s);
  
  vertex(s, -s, -s);
  vertex(s,  s, -s);
  vertex(0, 0, s);
  
  vertex(s, s, -s);
  vertex(-s, s, -s);
  vertex(0, 0, s);
  
  vertex(-s, s, -s);
  vertex(-s, -s, -s);
  vertex(0, 0, s);
  endShape();
}