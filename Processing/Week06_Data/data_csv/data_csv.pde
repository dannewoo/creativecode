int innerCircle = 30;

void setup() {
  size(600, 400);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  // Use the Table class and loadTable function to load the data
  Table data = loadTable("citibike_miles_daily.csv");
  // Create an array for the data
  float[] values = new float[data.getRowCount()];
  // Loop through the data and add it to the array
  for(int i = 0; i < data.getRowCount(); i++) {
    // Goes through the first column and all the rows
    // If you have multiple columns you would duplicate this and have getInt(1), getInt(2), etc.
    values[i] = data.getRow(i).getFloat(0);
  }
  
  // Loop through all the data array and draw a shape based on the values
  for(int i = 0; i < values.length; i++) {
    float n = values[i];
    float x = width/2;
    float y = height/2;
    float w = 1;
    // Map the height, radius and color values
    // Mapping the values changes the range
    // Example: mapping 0 - 100 to be 0 - height would be map(value, 0, 100, 0, height)
    float h = -map(n, 0, max(values), 0, height/2 - innerCircle);
    float r = map(i, 0, values.length, 0, TWO_PI);
    float c = map(n, 0, max(values), 120, 360);
    fill(c, 80, 100);
    pushMatrix();
    translate(x, y);
    // Draw a triangle and change the height based on the data
    rotate(r);
    //triangle(0, -innerCircle, w, h - innerCircle, -w, h - innerCircle);
    // Draw a rectangle and change the height based on the data
    rect(0, -innerCircle, w, h);
    popMatrix();
  }
}
