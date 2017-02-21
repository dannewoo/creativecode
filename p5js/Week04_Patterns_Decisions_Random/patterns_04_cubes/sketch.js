var a = 10, b = 20, c = 30, d = 40;
 
function setup() {
  createCanvas(600, 400);
  noStroke();

  for (var y = 0; y <= height; y += c) {
    for (var x = 0; x <= width; x += d) {
      push();
      if((y/c) % 2 == 0) {
        translate(x - b, y);
      } else {
        translate(x, y);
      }
      fill(5, 133, 170);
      quad(0, -c, b, -b, 0, -a, -b, -b);
      fill(1, 40, 76);
      quad(-b, -b, 0, -a, 0, a, -b, 0);
      fill(155);
      quad(b, -b, b, 0, 0, a, 0, -a);
      pop();
    }
  }
}