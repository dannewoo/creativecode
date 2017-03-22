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