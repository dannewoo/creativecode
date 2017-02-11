// Import the video library 
// (already installed, just need to reference it)
import processing.video.*;

// Variable for capture device
Capture video;

void setup() {
  size(640, 480);
  // Construct the Capture object
  video = new Capture(this, 640, 480);
  // Start the video
  video.start();
}

void draw() {
  // Check to see if the video is available
  if(video.available()) {
    // Read the video from the webcam
    video.read();
  }
  // Display the video
  image(video, 0, 0);
}

