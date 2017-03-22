var circle = new Array(40);
var randomR, randomX, randomY;

function setup() {
  createCanvas(600, 400);
  noStroke();
  ellipseMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  smooth();
  for (var i = 0; i < circle.length; i++) {
    randomR = random(10, 100);
    randomX = random(-5, 5);
    randomY = random(-5, 5);
    circle[i] = new Circle(width/2, height/2, randomR, color(random(360), 80, 100), randomX, randomY);
  }
}

function draw() {
  background(0);
  for (var i = 0; i < circle.length; i ++ ) {
    circle[i].drawCircle();
    circle[i].moveCircle();
  }
}

function Circle(x, y, r, c, xSpeed, ySpeed) {
  this.moveCircle = function() {
    x = x + xSpeed;
    y = y + ySpeed;

    if (x > width-r/2 || x < r/2) {
      xSpeed = xSpeed * -1;
    }

    if (y > height-r/2 || y < r/2) {
      ySpeed = ySpeed * -1;
    }
  }

  this.drawCircle = function() {
    fill(c);
    ellipse(x, y, r, r);
  }
}