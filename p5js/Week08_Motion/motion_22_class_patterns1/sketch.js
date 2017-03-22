var rectangle = new Array(20);
var w, h, x, y, xSpeed, ySpeed;

function setup() {
  createCanvas(600, 400);
  noStroke();
  ellipseMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  for (var i = 0; i < rectangle.length; i++) {
    w = random(10, 200);
    h = random(10, 200);
    x = -w;
    y = random(0, height-h);
    xSpeed = random(1, 10);
    ySpeed = 0;
    rectangle[i] = new Rectangle(x, y, w, h, color(random(360), 80, 100, random(10, 90)), xSpeed, ySpeed);
  }
}

function draw() {
  background(0);
  for (var i = 0; i < rectangle.length; i ++ ) {
    rectangle[i].drawRect();
    rectangle[i].moveRect();
  }
}

function Rectangle(x, y, w, h, c, xSpeed, ySpeed) {
  this.moveRect = function() {
    x = x + xSpeed;
    y = y + ySpeed;

    if (x > width + w) {
      x = -w;
    }

    if (y > height + h) {
      y = -h;
    }
  }

  this.drawRect = function() {
    fill(c);
    rect(x, y, w, h);
  }
}