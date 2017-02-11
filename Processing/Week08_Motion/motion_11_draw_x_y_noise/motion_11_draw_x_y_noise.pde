float d, x, y, xspeed, yspeed, noiseVal;

void setup() {
  size(640,360);
  noStroke();
  d = random(15, 50);
  x = random(d, width - d);
  y = random(d, height - d);
  xspeed = 2;
  yspeed = 3;
  noiseVal = 0;
  background(255);
}

void draw() {
  background(255);

  x = x + (noise(noiseVal, 0)*10)*xspeed;
  y = y + (noise(0, noiseVal)*3)*yspeed;

  if ((x > width - d/2) || (x < d/2)) {
    xspeed = xspeed * -1;
  }
  if ((y > height - d/2) || (y < d/2)) {
    yspeed = yspeed * -1;
  }

  fill(0);
  ellipse(x,y,d,d);
  noiseVal += 0.1;
}
