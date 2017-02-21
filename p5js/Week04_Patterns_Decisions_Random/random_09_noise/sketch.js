function setup() {
  createCanvas(600, 400);
  background(0); 
  stroke(255);
  noFill();
  strokeWeight(3);

  var xStep = 15;

  // Draw normal random values
  translate(0, 50);
  beginShape();
  for(var i = 0; i < width; i += xStep) {
    var ranY = random(100);
    vertex(i, ranY);
  }
  endShape();

  // Draw perlin noise values
  translate(0, 200);
  beginShape();
  var noiseCount = 0;

  for(var i = 0; i < width; i += xStep) {
    var ranY = noise(noiseCount);
    vertex(i, ranY * 100);
    noiseCount += 0.2;
  }
  endShape();
}