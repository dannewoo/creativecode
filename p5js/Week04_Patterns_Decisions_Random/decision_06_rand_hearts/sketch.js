var maxCol = 5;
var maxRow = 7;
var d = 60;
var pageMargin = 5;
  
function setup() {
  createCanvas(400, 550);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  noStroke();
  var r = d/2;
  var xSpacing = (width - (2*pageMargin)) / maxCol;
  var ySpacing = (height - (2*pageMargin)) / maxRow;
  translate(pageMargin + (xSpacing/2), pageMargin + (ySpacing/2));
  for (var x = 0; x < maxCol; x++) {
    for (var y = 0; y < maxRow; y++) {
      push();
      translate(x*xSpacing, y*ySpacing);
      if (x == 3 && y == 5) fill(0, 100, 95);
      else fill(105, 100, 50);
      if (x == 3 && y ==6) {
        textAlign(CENTER);
        text("Earth", 0, -17);
        text("Day...", 0, 0);
        text("'95", 0, 17);
      } else {
        beginShape();
          vertex(0, -r*0.4);
          bezierVertex(r * 0.2, -r * 0.9, r * 0.7, -r * 0.8, r*0.9, -r*0.45);
          bezierVertex(r * 1.1, -r * 0.1, r, r * 0.2, r*0.60, r*0.45);
          bezierVertex(r * 0.5, r * 0.5, r * 0.1, r * 0.6, 0, r);
          bezierVertex(-r * 0.1, r * 0.6, -r * 0.5, r * 0.5, -r*0.60, r*0.45);
          bezierVertex(-r, r * 0.2, -r * 1.1, -r * 0.1, -r*0.9, -r*0.45);
          bezierVertex(-r * 0.7, -r * 0.8, -r * 0.2, -r * 0.9, 0, -r*0.4);
        endShape();
      }
      pop();
    }
  }
}