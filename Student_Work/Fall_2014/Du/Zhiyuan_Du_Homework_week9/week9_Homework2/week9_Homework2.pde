int count = 2;
float speed = 1;
float easing = 0.5;

void setup(){
  size(600, 400);
  background(0);
  stroke(0);
}

void draw() {
  float target = dist(mouseX, mouseY, pmouseX, pmouseY);
  speed += (target - speed) * easing;
  if (mousePressed == true) {
    strokeWeight(speed/3);
    fill(255, 0, 0, 40);
    ellipse(mouseX, mouseY, 30, 30);
  }
  println(speed);
  
  if (keyPressed == true) {
    save("frame" + count + ".png");
    delay(400);
    count++;
  }
}
