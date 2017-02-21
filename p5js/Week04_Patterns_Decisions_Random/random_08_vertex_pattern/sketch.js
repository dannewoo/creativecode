var maxCol = 5;
var maxRow = 4;
var circleD = 60;
var maxPoints = 10;

function setup() {
  createCanvas(600, 400);
  smooth();
  noStroke();
  background(255);
  
  var xSpacing = (width/maxCol);
  var ySpacing = (height/maxRow);
  //translate(55, 45);
  for (var x = 0; x < maxCol; x++) {
    for (var y = 0; y < maxRow; y++) {
      if (x == 3 && y == 2) {
        fill(0, 255, 0);
      } else {
        fill(0);
      }
      push();
      translate(x*xSpacing, y*ySpacing);
      beginShape();
      for (var i = 0; i < maxPoints; i++) {
        vertex(random(10, 100), random(10, 100));
      }
      endShape();
      pop();
    }
  }
}