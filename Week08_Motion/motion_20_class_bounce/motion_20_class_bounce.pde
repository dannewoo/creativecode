Circle[] circle = new Circle[40];
float randomR, randomX, randomY;

void setup() {
  size(600, 400);
  noStroke();
  ellipseMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  smooth();
  for (int i = 0; i < circle.length; i++) {
    randomR = random(10, 100);
    randomX = random(-5, 5);
    randomY = random(-5, 5);
    circle[i] = new Circle(width/2, height/2, randomR, color(random(360), 80, 100), randomX, randomY);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < circle.length; i ++ ) {
    circle[i].drawCircle();
    circle[i].moveCircle();
  }
}

class Circle {
  float x;
  float y;
  float r;
  color c;
  float xSpeed, ySpeed;

  Circle(float _x, float _y, float _r, color _c, float _xSpeed, float _ySpeed) {
    x = _x;
    y = _y;
    r = _r;
    c = _c;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }

  void moveCircle() {
    x = x + xSpeed;
    y = y + ySpeed;

    if (x > width-r/2 || x < r/2) {
      xSpeed = xSpeed * -1;
    }

    if (y > height-r/2 || y < r/2) {
      ySpeed = ySpeed * -1;
    }
  }

  void drawCircle() {
    fill(c);
    ellipse(x, y, r, r);
  }
}



