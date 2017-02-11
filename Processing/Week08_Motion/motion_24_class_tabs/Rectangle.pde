class Rectangle {
  float x;
  float y;
  float w;
  float h;
  color c;
  float xSpeed, ySpeed;

  Rectangle(float _x, float _y, float _w, float _h, color _c, float _xSpeed, float _ySpeed) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    c = _c;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }

  void moveRect() {
    x = x + xSpeed;
    y = y + ySpeed;

    if (x > width + w) {
      x = -w;
    }

    if (y > height + h) {
      y = -h;
    }
  }

  void drawRect() {
    fill(c);
    rect(x, y, w, h);
  }
}
