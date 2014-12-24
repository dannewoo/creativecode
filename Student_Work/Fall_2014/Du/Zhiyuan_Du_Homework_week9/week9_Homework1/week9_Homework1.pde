float maxDistance;

void setup() {
  size(600, 400);
  background(0);
  stroke(0);
  maxDistance = dist(0, 0, width, height);
}

void draw() {
  background(0);
  for(int i = 0; i < width + 5; i+=5){
    for(int j = 0; j < height + 10; j+=10){
      fill(random(0, 360), 80, 100, random(0,360));
      float mouseDist = dist(mouseX, mouseY, i, j);
      float a = map(mouseDist, 0, maxDistance, 0, 3600);
      float s = map(mouseDist, 0, maxDistance, 1, 1);
      pushMatrix();
      translate(i, j);
      strokeWeight(s);
      rotate(radians(a));
      ellipse(mouseX, mouseY, 5, 5);
      popMatrix();
      
    }
  }
}
