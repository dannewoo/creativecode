int count = 0;

void setup() {
  size(600, 400);
  background(255);
  frameRate(100);
  noStroke();
}

void draw() {
  background(255); 
  fill(0); 
  textSize(42);
  text("Milliseconds: " + millis(), 10, 50);
  text("Current Time: " + (hour() % 12) + ":" + minute() + ":" + second(), 10, 100);
  text("Current Time: " + month() + "/" + day() + "/" + year(), 10, 150);
  text("Frames: " + frameCount, 10, 200);
  text("Count: " + count, 10, 250);
  if(frameCount % 100 == 0) {
    count++;
  }
}

