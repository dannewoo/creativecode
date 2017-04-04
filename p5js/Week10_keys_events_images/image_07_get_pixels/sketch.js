var img;
var x, y;

function setup() {
  createCanvas(600, 400);
  background(255);
  noStroke();
  img = loadImage("images/sunflower.jpg");

  pixelDensity(10);
}
  
function draw() {
  background(255);
  s = map(mouseX, 0, width, 20, 100);
  for (var x = 0; x < img.width/s; x++) {
    for (var y = 0; y < img.height/s; y++) {
      var c = img.get(x*s, y*s);
      fill(c, 70);
      rect(x*s, y*s, s, s);
    }
  }
}