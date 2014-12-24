//WEEK 3: Colored "Self Portrait"

void setup() {
  size(500, 500);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  
  fill(60, 100, 100, 75);
  ellipse(250, 250, 375, 375);
  
  stroke(0, 100, 100);
  line(180, 200, 300, 300);
  line(270, 300, 210, 240);
  line(390, 170, 180, 390);
  line(150, 160, 270, 190);
  
}
