//import processing.pdf.*; 

int circleSize = 38;

void setup() {
  size(450, 695);
  //beginRecord(PDF, "midterm.pdf"); 
 //noStroke();
  colorMode(HSB, 360, 100, 100);
  background(354, 90, 45);
  
   //scales
   for(int x = 0; x < width + circleSize; x += circleSize) {
   for(int y = 0; y < height + circleSize; y += circleSize) {
     noStroke();
      fill(0, 50);
      ellipse(x, y, circleSize * 2, circleSize * 2);
      fill(354, 88, 40);
      ellipse(x, y, circleSize * 1.5, circleSize * 1.5);
      fill(0, 80, random(20, 100));
      ellipse(x, y, circleSize, circleSize);
}             
}  
  //arrowshaft
  pushMatrix();
  fill(0);
  rect(width/2, 150, 8, 400);
  popMatrix();
  
  //arrowhead
  pushMatrix();
  fill(0);
  translate(width/2 - 53, 100);
  triangle(43, 75, 58, 20, 70, 75);
  popMatrix();
  
  //arrowfeatherR
  pushMatrix();
  translate(200, 472);
  fill(0);
  quad(50, 90, 30, 30, 30, 80, 50, 110);
  popMatrix(); 
    
  //arrowfeatherL
  pushMatrix();
  translate(157, 472);
  fill(0);
  quad(50, 90, 50, 110, 70, 80, 70, 30);
  popMatrix();
      
  //endRecord(); 
} 
