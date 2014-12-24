
 
void face(float x, float y, float a, int c)
{
  
  noStroke();
  float nx = x + branchLength  * cos(a);
  float ny = y + branchLength  * sin(a);
    
//  if (c >= 1 && c != 6) {
//    strokeWeight(1);
//    stroke(#ffffff, 150);
////    line(x, y, nx, ny);
//  }
 
  if (c < numBranches) {
//stroke(300, 100, 15);

//    fill(currentColor, 90, 90, 10);
    ellipse(x, y, 10, 10);
     

     
//    noStroke();
//    stroke(10, 90, 80, 15);
//    fill(10, 90, 90, 10);
//    ellipse(x, y, 30, 30);
  }
   
  if (c > 0) {
    face(nx, ny, (a + r / 3) * -3, c - 1);
    face(nx, ny, (a - r / 3) * -3, c - 1);
  }
}
