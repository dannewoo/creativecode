int s = 100;
float y = s/2;
float speed = 0;
float gravity = 0.2;  

void setup() {
  size(600,400);
  background(255);
  rectMode(CENTER);
  noStroke();
  frameRate(15);
}

void draw() {
  background(255);
  // Add speed to location.
  y = y + speed;
  // Add gravity to speed.
  speed = speed + gravity;
  // When the rect reaches the bottom reverse direction.
  if (y > height - s/2) {
    // Multiplying by -0.95 instead of -1 slows the square each time
    // This is known as a "dampening" effect and is more realistic.
    speed = speed * -0.95;  
  }
  fill(0);
  rect(width/2, y, s, s);
}

