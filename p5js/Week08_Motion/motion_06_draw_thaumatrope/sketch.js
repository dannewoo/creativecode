var count = 0;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  frameRate(60);
}

function draw() {
  background(255);
  fill(0);
  if(count % 2 == 0) {
    translate(width/2 - 45, height/2 - 50);
    for(var i = 0; i < 5; i++) {
      rect(20*i, 0, 10, 100);
    }
  } else {
    ellipse(width/2, height/2, 65, 65);
  }
  count++;
}