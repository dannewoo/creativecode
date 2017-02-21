function setup() {
  createCanvas(150, 150);
  colorMode(HSB, 360, 100, 100);
  background(0);
  noStroke();
  
  for (var i = 0; i < 10; i++) {
    fill(36*i, 100, 100);
    rect(width/10*i, 0, width/10, height);
  }
  
}