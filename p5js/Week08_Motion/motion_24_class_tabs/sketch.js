var rectangle1 = new Array(20);
var rectangle2 = new Array(20);
var w, h, x, y, xSpeed, ySpeed;

function setup() {
  createCanvas(600, 400);
  noStroke();
  ellipseMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  for (var i = 0; i < rectangle1.length; i++) {
    w = random(150, 300);
    h = random(10, 50);
    x = -w;
    y = random(0, height-h);
    xSpeed = random(1, 5);
    ySpeed = 0;
    rectangle1[i] = new Rectangle(x, y, w, h, color(0, 80, 100, random(10, 40)), xSpeed, ySpeed);
  }
  for (var i = 0; i < rectangle2.length; i++) {
    w = random(10, 50);
    h = random(150, 300);
    x = random(0, width-w);
    y = -y;
    xSpeed = 0;
    ySpeed = random(5, 15);
    rectangle2[i] = new Rectangle(x, y, w, h, color(240, 80, 100, random(10, 90)), xSpeed, ySpeed);
  }
}

function draw() {
  background(0);
  for (var i = 0; i < rectangle1.length; i ++ ) {
    rectangle1[i].drawRect();
    rectangle1[i].moveRect();
  }
  for (var i = 0; i < rectangle2.length; i ++ ) {
    rectangle2[i].drawRect();
    rectangle2[i].moveRect();
  }
}