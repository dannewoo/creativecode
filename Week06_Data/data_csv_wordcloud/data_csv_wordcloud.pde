void setup() {
  size(600, 400);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  // Use the Table class and loadTable function to load the data
  Table data = loadTable("moby_dick.csv");
  // Create an array for the data
  String[] words = new String[data.getRowCount()];
  int[] values = new int[data.getRowCount()];
  // Loop through the data and add it to the array
  for(int i = 0; i < data.getRowCount(); i++) {
    words[i] = data.getRow(i).getString(0);
    values[i] = data.getRow(i).getInt(1);
  }
  
  // Loop through all the data array and draw a shape based on the values
  for(int i = 1; i < 20; i++) {
    String w = words[i];
    int n = values[i];
    float y = height/2;
    // Map the height, radius and color values
    // Mapping the values changes the range
    // Example: mapping 0 - 100 to be 0 - height would be map(value, 0, 100, 0, height)
    float s = map(n, 0, max(values), 0, 50);
    float c = map(n, 0, max(values), 0, 360);
    fill(c, 80, 100);
    textSize(s);
    text(w, 0, y);
    translate(textWidth(w), 0);
  }
}
