var img1, img2;

function preload() {
  img1 = loadImage("images/sunflower.jpg");
  img2 = loadImage("images/hibiscus.jpg");
}

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  // ADD, LIGHTEST, DARKEST, MULTIPLY
  image(img1, 0, 0);
  blend(img2, 0, 0, width, height, 0, 0, width, height, ADD);
}