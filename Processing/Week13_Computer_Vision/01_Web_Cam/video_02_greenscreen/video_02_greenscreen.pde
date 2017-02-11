import processing.video.*;

Capture video;

// Saved background
PImage backgroundImage;
PImage backgroundReplace;

// How different must a pixel be to be a foreground pixel
float threshold = 20;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height);
  video.start();

  // Create an empty image the same size as the video
  backgroundImage = createImage(video.width, video.height, RGB);
  backgroundReplace = loadImage("beach.jpg");
}

void draw() {
  // Map the threshold to mouse location
  threshold = map(mouseX, 0, width, 5, 50);

  // We are looking at the video's pixels, the memorized backgroundImage's pixels, as well as accessing the display pixels. 
  // So we must loadPixels() for all!
  loadPixels();
  video.loadPixels(); 
  backgroundImage.loadPixels();

  // Begin loop to walk through every pixel
  for (int x = 0; x < video.width; x ++ ) {
    for (int y = 0; y < video.height; y ++ ) {
      int loc = x + y*video.width; // Step 1, what is the 1D pixel location
      color fgColor = video.pixels[loc]; // Step 2, what is the foreground color

      // What is the background color
      color bgColor = backgroundImage.pixels[loc];

      // Compare the foreground and background color
      float r1 = red(fgColor);
      float g1 = green(fgColor);
      float b1 = blue(fgColor);
      float r2 = red(bgColor);
      float g2 = green(bgColor);
      float b2 = blue(bgColor);
      float diff = dist(r1, g1, b1, r2, g2, b2);

      // Is the foreground color different from the background color
      if (diff > threshold) {
        // If so, display the foreground color
        pixels[loc] = fgColor;
      } else {
        // If not, display the beach scene
        pixels[loc] = backgroundReplace.pixels[loc];
      }
    }
  }
  updatePixels();
}

// New frame available from camera
void captureEvent(Capture video) {
  video.read();
}

void mousePressed() {
  // Set the background
  backgroundImage.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  backgroundImage.updatePixels();
}

