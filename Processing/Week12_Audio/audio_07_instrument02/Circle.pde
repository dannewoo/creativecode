class Circle {
  float x;
  float y;
  float r;
  color c;
  float xSpeed, ySpeed;

  float lineX1 = 0;
  float lineY1 = height/2;
  float lineX2 = width;
  float lineY2 = height/2;

  // Constructor 
  // Sets up the variable fields for our class when its first created  
  Circle(float _x, float _y, float _r, color _c, float _xSpeed, float _ySpeed) {
    x = _x;
    y = _y;
    r = _r;
    c = _c;
    xSpeed = _xSpeed;
    ySpeed = _ySpeed;
  }

  void moveCircle() {
    float mValue = x;
    float m = map(mValue, 0, 100, 0, width);

    x += xSpeed;
    y += ySpeed;

    if (x > width-r || x < r) {
      x -= xSpeed;
      xSpeed *= -1;
    }

    if (y > height-r || y < r) {
      y -= ySpeed;
      ySpeed *= -1;
    }
    if (circleLineIntersect(lineX1, lineY1, lineX2, lineY2, x, y, r) == true) {
      if (mValue < width/10) {
        sample01.trigger();
      } 
      else if (mValue < (width/10)*2) {
        sample02.trigger();
      }
      else if (mValue < (width/10)*3) {
        sample03.trigger();
      }
      else if (mValue < (width/10)*4) {
        sample04.trigger();
      }
      else if (mValue < (width/10)*5) {
        sample05.trigger();
      }
      else if (mValue < (width/10)*6) {
        sample06.trigger();
      }
      else if (mValue < (width/10)*7) {
        sample07.trigger();
      }
      else if (mValue < (width/10)*8) {
        sample08.trigger();
      }
      else if (mValue < (width/10)*9) {
        sample09.trigger();
      }
      else if (mValue < width) {
        sample10.trigger();
      }
    }
  }

  void drawCircle() {
    noStroke();
    fill(c);
    ellipse(x, y, r, r);
  }

  boolean circleLineIntersect(float x1, float y1, float x2, float y2, float cx, float cy, float cr ) {
    float dx = x2 - x1;
    float dy = y2 - y1;
    float a = dx * dx + dy * dy;
    float b = 2 * (dx * (x1 - cx) + dy * (y1 - cy));
    float c = cx * cx + cy * cy;
    c += x1 * x1 + y1 * y1;
    c -= 2 * (cx * x1 + cy * y1);
    c -= cr * cr;
    float bb4ac = b * b - 4 * a * c;

    if (bb4ac < 0) {  // Not intersecting
      return false;
    } else {

      float mu = (-b + sqrt( b*b - 4*a*c )) / (2*a);
      float ix1 = x1 + mu*(dx);
      float iy1 = y1 + mu*(dy);
      mu = (-b - sqrt(b*b - 4*a*c )) / (2*a);
      float ix2 = x1 + mu*(dx);
      float iy2 = y1 + mu*(dy);

      float testX;
      float testY;

      if (dist(x1, y1, cx, cy) < dist(x2, y2, cx, cy)) {
        testX = x2;
        testY = y2;
      } else {
        testX = x1;
        testY = y1;
      }

      if (dist(testX, testY, ix1, iy1) < dist(x1, y1, x2, y2) || dist(testX, testY, ix2, iy2) < dist(x1, y1, x2, y2)) {
        return true;
      } else {
        return false;
      }
    }
  }
}

