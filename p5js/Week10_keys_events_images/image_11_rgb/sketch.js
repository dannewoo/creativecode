var img;

function setup() {
  createCanvas(600, 400);
  noStroke();
  img = loadImage("images/tree.jpg");
  pixelDensity(1);
}

function draw() {
  loadPixels();
  var mX = map(mouseX, 0, width, 0, 255);
  var mY = map(mouseY, 0, width, 0, 255);

  // We must also call loadPixels() on the PImage since we are going to read its pixels.
  img.loadPixels();
  for (var y = 0; y < height; y++ ) {
    for (var x = 0; x < width; x++ ) {
      var loc = (x + y * width) * 4;
      // The functions red(), green(), and blue() pull out the three color components from a pixel.
      var r = img.pixels[loc   ]; 
      var g = img.pixels[loc + 1];
      var b = img.pixels[loc + 2];

      // Set the display pixel to the image pixel
      pixels[loc    ] = mX;
      pixels[loc + 1] = g;
      pixels[loc + 2] = mY;
      pixels[loc + 3] = 255; // Always have to set alpha
    }
  }

  updatePixels();
}