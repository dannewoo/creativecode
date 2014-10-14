// Data set as an array of numbers
int[] numbers = { 19, 30, 62, 89, 52 };

void setup() {
  size(600, 400);
  background(255);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noStroke();
  
  // Loop through all the numbers and create a bar for each number
  for (int i = 0; i < numbers.length; i++) {
    int n = numbers[i];
    float x = map(i, 0, numbers.length, 0, width);
    float w = width/numbers.length;
    float h = map(n, 0, max(numbers), 0, height);
    float y = height - h;
    float c = map(n, 0, max(numbers), 0, 360);
    fill(c, 100, 100);
    rect(x, y, w, h);
  }
}
