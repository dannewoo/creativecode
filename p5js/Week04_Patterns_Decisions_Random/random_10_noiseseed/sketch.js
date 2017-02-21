function setup() {
  createCanvas(600, 400);
  background(0); 
  smooth();
  noFill();
  strokeWeight(3);
  noiseSeed(4);

  // draw 10 times across the screen
  for(var j = 0; j < 10; j++) {
    translate(0, 28);
    beginShape();
    var noiseCount = 0;

    // make the 5 last lines be different
    if(j > 4) {
      noiseSeed(0);
      stroke(255);
    } else {
      stroke(220, 50, 50);
    }

    for(var i = 0; i < width; i += 10) {
      var ranY = noise(noiseCount);
      vertex(i, ranY * 100);

      noiseCount += 0.2;
    }
    endShape();
  }
}