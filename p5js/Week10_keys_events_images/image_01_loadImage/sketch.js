var img;

function setup() {
  createCanvas(600, 400);
  background(255);
  // We need a localserver to run this since we are loading in data
  img = loadImage("images/tree.jpg");
}

function draw() {
  // Loads the image with the images height and width
  image(img, 0, 0);
  // You can change the height and width of the image as well
  image(img, 0, 0, img.width/2, img.height/2);
}