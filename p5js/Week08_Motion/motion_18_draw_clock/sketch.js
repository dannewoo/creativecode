function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  rectMode(CENTER);
}

function draw() {
  var h = map((hour()%12), 0, 12, 0, 360);
  var m = map(minute(), 0, 60, 0, 360);
  var s = map(second(), 0, 60, 0, 360);
  var c = map(second(), 0, 60, 100, 255);
  background(c, 255-c, 0); 
  fill(0, 70); 
  ellipse(width/2, height/2, 20, 20);
  ellipse(width/2, height/2, 350, 350);
  //Hours
  push();
  translate(width/2, height/2);
  rotate(radians(h));
  ellipse(0, -150, 25, 25);
  pop();
  //Minutes
  push();
  translate(width/2, height/2);
  rotate(radians(m));
  rect(0, -150, 25, 25);
  pop();
  //Seconds
  push();
    translate(width/2, height/2);
    rotate(radians(s));
    push();
      translate(0, -150);
      triangle(0, -13, 13, 13, -13, 13);
    pop();
  pop();
}