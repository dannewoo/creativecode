var img;
var x, y;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  img = loadImage("images/sunflower.jpg");
}
  
function draw() {
  x = round(random(width));
  y = round(random(height));
  var c = img.get(x, y);
  fill(c, 70);
  ellipse(x, y, 30, 30);
}