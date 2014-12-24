//import geomerative.*;
//int fontSize = 48;
//String word = "Hello World!";
//int circleSize = 20;
//int rectSize = 50;

void setup() {
  size(500, 680);
  background(173, 173, 173);
  colorMode(HSB, 360, 100, 100);
  noStroke();
//  RG.init(this);
//  
//  RFont font = new RFont("Arial-BoldMT-48.ttf", fontSize, CENTER);
//  // Alternative for size and alignment
//  /* RFont font = new RFont("Arial-BoldMT-48.ttf");
//  font.setSize(fontSize);
//  font.setAlign(CENTER); */
//
//  translate(width/2, height/2);
//  font.draw(word);
 
//Philosophy Professor
  pushMatrix();
  fill(360, 100, 60);
  ellipse(130, 130, 100, 100);
  rect(95, 175, 75, 100, 7);
  popMatrix();
  
//Other Students

  pushMatrix();
  fill(360, 0, 100);
  ellipse(50, 543, 70, 70);
  rect(25, 575, 55, 90, 7);
  popMatrix();    
  
  pushMatrix();
  fill(360, 0, 100);
  ellipse(-5, 370, 70, 70);
  rect(-35, 400, 55, 90, 7);
  popMatrix();  

  pushMatrix();
  fill(360, 0, 100);
  ellipse(98, 370, 70, 70);
  rect(70, 400, 55, 90, 7);
  popMatrix();
  
  pushMatrix();
  fill(360, 0, 100);
  ellipse(150, 543, 70, 70);
  rect(125, 575, 55, 90, 7);
  popMatrix(); 

  pushMatrix();
  fill(360, 0, 100);
  ellipse(202, 370, 70, 70);
  rect(175, 400, 55, 90, 7);
  popMatrix(); 

  pushMatrix();
  fill(360, 0, 100);
  ellipse(250, 543, 70, 70);
  rect(225, 575, 55, 90, 7);
  popMatrix(); 
   
  pushMatrix();
  fill(360, 0, 100);
  ellipse(418, 370, 70, 70);
  rect(390, 400, 55, 90, 7);
  popMatrix();   
   
  pushMatrix();
  fill(360, 0, 100);
  ellipse(350, 543, 70, 70);
  rect(325, 575, 55, 90, 7);
  popMatrix(); 
     
  pushMatrix();
  fill(360, 0, 100);
  ellipse(450, 543, 70, 70);
  rect(425, 575, 55, 90, 7);
  popMatrix(); 
 
  pushMatrix();
  fill(360, 0, 100);
  ellipse(520, 370, 70, 70);
  rect(490, 400, 55, 90, 7);
  popMatrix();  
   
//Rebellious Student
  pushMatrix();
  translate(200, -70);
  fill(55, 100, 80);
  ellipse(115, 420, 90, 90);
  rect(80, 460, 70, 100, 7);
  popMatrix();
 
//Professor's Pointer
  pushMatrix();
  fill(360, 100, 60);
  rotate(HALF_PI/2);
  rect(270, -145, 2.7, 170, 7);
  popMatrix();

  saveFrame("Gods Not Dead.jpg");

}
