void setup() {
  size(600, 400);
  background(255);
  noStroke();

  // Two face functions with different values
  face(width/2 - 100, height/2, 100, 150, round(random(255)));
  face(width/2 + 100, height/2, 150, 100, round(random(255)));
}

// Function for face passing an x, y, width, height and color value
void face(int x, int y, int w, int h, int c) { 
  fill(c, 0, 0);
  ellipse(x, y, w, h);
  fill(0, c, 0);
  ellipse(x - w/6, y - h/8, w/4, h/4);
  ellipse(x + w/6, y - h/8, w/4, h/4);
  ellipse(x, y + h/8, w/8, h/8);
  ellipse(x, y + h/3, w/8, h/8);
}

