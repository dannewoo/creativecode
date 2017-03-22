var innerCircle = 30;
var words = [];
var values = [];
var data;

// You need to preload the data before you can use it.
function preload() {
  // Use the loadTable function function to load the data
  // Pass in the location of the data file, type of file and 
  // header represents that the columns have a header.
  // You will also need to run a local server since you are 
  // loading in a data file.
  data = loadTable("data/moby_dick.csv", "csv", "header");
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
      if(j == 0) words.push(data.getString(i, j));
      if(j == 1) values.push(data.getNum(i, j));
    }
  }
  
  // Loop through all the data array and draw a shape based on the values
  for(var i = 0; i < 20; i++) {
    var w = words[i];
    var n = values[i];
    var y = height/2;
    // Map the height, radius and color values
    // Mapping the values changes the range
    // Example: mapping 0 - 100 to be 0 - height would be map(value, 0, 100, 0, height)
    var s = map(n, 0, max(values), 0, 50);
    var c = map(n, 0, max(values), 0, 360);
    fill(c, 80, 100);
    textSize(s);
    text(w, 0, y);
    translate(textWidth(w), 0);
  }
}