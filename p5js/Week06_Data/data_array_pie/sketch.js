// Data set as an array of numbers
var numbers = [ 30, 10, 45, 35, 60, 38, 75, 67 ];

function setup() {
  createCanvas(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  // Loop through all the numbers and create a bar for each number
  var diameter = 300;
  var lastAngle = 0;
  for (var i = 0; i < numbers.length; i++) {
    var n = numbers[i];
    var c = map(n, 0, max(numbers), 0, 100);
    fill(0, 100, c);
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(n));
    lastAngle += radians(n);
  }
}