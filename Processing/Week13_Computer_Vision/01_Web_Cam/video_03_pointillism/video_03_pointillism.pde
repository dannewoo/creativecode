import processing.video.*;

Capture video;

// Size of the points
int pointillize = 50;

void setup() {
  size(640, 480);
  background(0);
  noStroke();
  video = new Capture(this, width, height);
  video.start();
}

// New frame available from camera
void captureEvent(Capture video) {
  video.read();
}

void draw() {
  // Pick a random point
  int x = int(random(video.width));
  int y = int(random(video.height));
  int loc = x + y*video.width;
  // Look up the RGB color in the source image
  video.loadPixels();
  float r = red(video.pixels[loc]);
  float g = green(video.pixels[loc]);
  float b = blue(video.pixels[loc]);
  // Draw an ellipse at that location with that color
  fill(r, g, b, 100);
  ellipse(x, y, pointillize, pointillize); // Back to shapes! Instead of setting a pixel, we use the color from a pixel to draw a circle.
}

