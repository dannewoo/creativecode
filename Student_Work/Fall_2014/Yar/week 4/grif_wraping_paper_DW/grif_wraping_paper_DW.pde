int mainw = 800;
int mainh = 600;
int rectsizemain = 100;
int rectspmain = -26;
int rectsizesub = 40;
int ellsize = 10;
 
void setup() { 
  size(mainw, mainh); 
  noStroke();   
  color white = color(255, 255, 255);
  color pink = color(255, 65, 182);
  color blue = color(0, 205, 255);
  color bg = color(91, 251, 72);
  colorMode(RGB, 255, 255, 255); 
  background(bg); 
  //start design
  
  // Put the entire design in a double for loop to make a pattern
  // Add the width and height of the rectsize each time it loops through for the right spacing
  for(int x = 0; x < width + rectsizemain+40; x += rectsizemain+40) {
    for(int y = 0; y < height + rectsizemain+40; y += rectsizemain+40) {
      // When you translate or rotate you need to put it in a push/popMatrix
      pushMatrix();
      // Use translate(x, y) to translate each shape to the right positions
      translate(x, y);
      rotate(HALF_PI/1.8);
      fill(pink);
      rect (rectspmain, rectspmain, rectsizemain, rectsizemain);
      fill(blue);
      rect (rectspmain + 55, rectspmain + 5, rectsizesub , rectsizesub);
      rect (rectspmain +5, rectspmain +5 , rectsizesub , rectsizesub);
      rect (rectspmain + 5  , rectspmain +55 , rectsizesub , rectsizesub);
      rect (rectspmain + 55, rectspmain + 55 , rectsizesub , rectsizesub); 
      fill(white);
      ellipse(rectspmain + 12, rectspmain + 12 , ellsize, ellsize);
      ellipse(rectspmain + 38, rectspmain + 12 , ellsize, ellsize);
      ellipse(rectspmain + 12, rectspmain + 38 , ellsize, ellsize);
      ellipse(rectspmain + 38, rectspmain + 38 , ellsize, ellsize);
      ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 12 , ellsize, ellsize);
      ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 12 , ellsize, ellsize);
      ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 38 , ellsize, ellsize);
      ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 38 , ellsize, ellsize);
      ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
      ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
      ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
      ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
      ellipse(rectspmain + 12, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
      ellipse(rectspmain + 38, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
      ellipse(rectspmain + 12, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
      ellipse(rectspmain + 38, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
      popMatrix();
    }
  }
}
