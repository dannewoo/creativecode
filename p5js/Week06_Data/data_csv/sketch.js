var innerCircle = 30;
var values = [];
var data;

// You need to preload the data before you can use it.
function preload() {
  // Use the loadTable function function to load the data
  // Pass in the location of the data file, type of file and 
  // header represents that the columns have a header.
  // You will also need to run a local server since you are 
  // loading in a data file.
  data = loadTable("data/citibike_miles_daily.csv", "csv", "header");
}

function setup() {
  createCanvas(600, 400);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);

  // Loop through the data and adds it to the array
  for(var i = 0; i < data.getRowCount(); i++) {
    for (var j = 0; j < data.getColumnCount(); j++) {
      // Goes through all the columns and all the rows
      // and pushs the data points to the values
      values.push(data.getNum(i, j));
    }
  }
  
  // Loop through all the data array and draw a shape based on the values
  for(var i = 0; i < values.length; i++) {
    var n = values[i];
    var x = width/2;
    var y = height/2;
    var w = 1;
    // Map the height, radius and color values
    // Mapping the values changes the range
    // Example: mapping 0 - 100 to be 0 - height would be map(value, 0, 100, 0, height)
    var h = -map(n, 0, max(values), 0, height/2 - innerCircle);
    var r = map(i, 0, values.length, 0, TWO_PI);
    var c = map(n, 0, max(values), 120, 360);
    fill(c, 80, 100);
    push();
    translate(x, y);
    rotate(r);
    // Draw a triangle and change the height based on the data
    // triangle(0, -innerCircle, w, h - innerCircle, -w, h - innerCircle);
    // Draw a rectangle and change the height based on the data
    rect(0, -innerCircle, w, h);
    pop();
  }
}