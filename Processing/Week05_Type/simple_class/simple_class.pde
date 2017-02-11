void setup() {
  size(600, 400);
  background(255);
  noStroke();
  
  //Two face objects with different values
  Face f1 = new Face(width/2 - 100, height/2, 100, 150, random(255)); 
  Face f2 = new Face(width/2 + 100, height/2, 150, 100, random(255)); 
  
  //Run the rectangle and/or circle function inside the class
  f1.rectangle();
  f1.circle();
  f2.rectangle();
  f2.circle();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Face { 
  float x, y, w, h, c; 
  // The Constructor is defined with arguments
  Face (float xPos, float yPos, float rectWidth, float rectHeight, float rectColor) {  
    x = xPos; 
    y = yPos; 
    w = rectWidth; 
    h = rectHeight; 
    c = rectColor; 
  } 
  // Create multiple functions to use.
  void circle() { 
    fill(0, c, 0);
    ellipse(x - w/6, y - h/8, w/4, h/4);
    ellipse(x + w/6, y - h/8, w/4, h/4);
    ellipse(x, y + h/8, w/8, h/8);
    ellipse(x, y + h/3, w/8, h/8);
  } 
  void rectangle() {
    rectMode(CENTER);
    fill(c, 0, 0);
    rect(x, y, w, h);
  }
} 
