Rectangle[] rectangle1 = new Rectangle[20];
Rectangle[] rectangle2 = new Rectangle[20];
float w, h, x, y, xSpeed, ySpeed;

void setup() {
  size(600, 400);
  noStroke();
  ellipseMode(CENTER);
  colorMode(HSB, 360, 100, 100, 100);
  smooth();
  for (int i = 0; i < rectangle1.length; i++) {
    w = random(150, 300);
    h = random(10, 50);
    x = -w;
    y = random(0, height-h);
    xSpeed = random(1, 5);
    ySpeed = 0;
    rectangle1[i] = new Rectangle(x, y, w, h, color(0, 80, 100, random(10, 40)), xSpeed, ySpeed);
  }
  for (int i = 0; i < rectangle2.length; i++) {
    w = random(10, 50);
    h = random(150, 300);
    x = random(0, width-w);
    y = -y;
    xSpeed = 0;
    ySpeed = random(5, 15);
    rectangle2[i] = new Rectangle(x, y, w, h, color(240, 80, 100, random(10, 90)), xSpeed, ySpeed);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < rectangle1.length; i ++ ) {
    rectangle1[i].drawRect();
    rectangle1[i].moveRect();
  }
  for (int i = 0; i < rectangle2.length; i ++ ) {
    rectangle2[i].drawRect();
    rectangle2[i].moveRect();
  }
}
