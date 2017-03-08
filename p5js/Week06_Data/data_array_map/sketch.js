// Data set as an array of numbers
var numbers = [ 19, 30, 62, 89, 52 ];

function setup() {
  createCanvas(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noStroke();
  
  // Loop through all the numbers and create a bar for each number
  for (var i = 0; i < numbers.length; i++) {
    var n = numbers[i];
    var x = map(i, 0, numbers.length, 0, width);
    var w = width/numbers.length;
    var h = map(n, 0, max(numbers), 0, height);
    var y = height - h;
    var c = map(n, 0, max(numbers), 0, 360);
    fill(c, 100, 100);
    rect(x, y, w, h);
  }
}