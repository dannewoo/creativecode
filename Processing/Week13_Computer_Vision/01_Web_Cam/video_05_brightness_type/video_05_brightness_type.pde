import processing.video.*;

// Size of each cell in the grid
int videoScale = 20;
// Number of columns and rows in our system
int cols, rows;
// Variable for capture device
Capture video;
// String of letters to be used later
String[] letters = { "H", "O" };

void setup() {
  size(640, 480);
  textAlign(CENTER);
  // Initialize columns and rows
  cols = width / videoScale;
  rows = height / videoScale;
  // Construct the Capture object
  video = new Capture(this, cols, rows);
  video.start();
}

void draw() {
  background(0);
  video.loadPixels();

  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {

      // Where are we, pixel-wise?
      int x = i * videoScale;
      int y = j * videoScale;

      // Reversing x to mirror the image
      // In order to mirror the image, the column is reversed with the following formula:
      // mirrored column = width - column - 1
      int loc = (video.width - i - 1) + j*video.width;

      // Each point is colored white with a size determined by brightness
      color c = video.pixels[loc];

      // A letter size is calculated as a function of the pixel's brightness. 
      // A bright pixel is a large letter, and a dark pixel is a small one.
      float sz = (brightness(c)/255)*videoScale; 
      // Fill with the color of the pixel
      fill(c);
      // Size changes based on the brightness of the pixel
      textSize(sz + 1);
      // Rotate through the string of letters
      text(letters[(i + j)%letters.length], x + videoScale/2, y + videoScale/2);
    }
  }
}

void captureEvent(Capture video) {
  video.read();
}
