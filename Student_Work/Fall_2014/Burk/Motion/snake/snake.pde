Circle[] circle = new Circle[50];
float randomD, randomX, randomY;

void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  ellipseMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < circle.length; i++){
    randomD = random(10, 100);
    randomX = random(-5, -5);
    randomY = random(-5, -5);
    circle[i] = new Circle(width/2, height/2, randomD, color(0, 80, 100, random(100)), randomX, randomY);
  }
}

void draw() {
  background(0, 0, 100);
  for(int i = 0; i < circle.length; i++) {
    circle[i].displayCircle();
    circle[i].moveCircle();
  }
}

class Circle {
  float x, y, d, xSpeed, ySpeed;
  color c;
  Circle(float _x, float _y, float _d, color _c, float _xSpeed, float _ySpeed) {
    x = _x;
    y = _y;
    d = _d;
    c = _c;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }
  
  void displayCircle() {
    fill(c);
    ellipse(x, y, d, d);
  }
  void moveCircle() {
    x = x + xSpeed;
    y = y + ySpeed;
    if(x > width-d/2 || x < d/2) {
      xSpeed = xSpeed * -1;
    }
    if(y > height-d/2 || y < d/2) {
      ySpeed = ySpeed * -1;
    }
    if(d > y || d < x){
        c = c + 3;
}
  }
}

