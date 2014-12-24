int diameter = 45;
int tall = 70;
int sharedPoint = 85;
int connectPointx = 195;
int connectPointy = 500;

void setup(){
  size(450,670);
  background(255);
  
  pushMatrix();
  translate(70, 30);
  rotate(PI/8);
  
  //balloon strings begin here
  stroke(0);
  strokeWeight(2);
  line(105, 120, connectPointx - 2, connectPointy);
  line(115, sharedPoint, connectPointx, connectPointy);
  line(130, sharedPoint, connectPointx - 2, connectPointy);
  line(145, sharedPoint, connectPointx, connectPointy);
  line(160, sharedPoint, connectPointx - 2, connectPointy);
  line(175, sharedPoint, connectPointx, connectPointy);
  line(190, sharedPoint, connectPointx + 2, connectPointy);
  line(205, sharedPoint, connectPointx, connectPointy);
  line(220, sharedPoint, connectPointx + 2, connectPointy);
  line(238, sharedPoint, connectPointx, connectPointy);
  line(250, sharedPoint, connectPointx + 2, connectPointy);
  line(263, 127, connectPointx, connectPointy);
  
  //balloons begin here  
  noStroke();
  //loose balloons begin here
  fill(130);
  ellipse(240, 0, diameter, tall); 
  
  fill(80);
  ellipse(300, -40, diameter, tall);
  
  fill(95);
  ellipse(200, -80, diameter, tall);
  
  fill(115);
  ellipse(330, -160, diameter, tall);
  //loose balloons end
  
  fill(105);
  ellipse(175, 55, diameter, tall);
  
  fill(175);
  ellipse(150, 75, diameter, tall);
  
  fill(115);
  ellipse(195, 80, diameter, tall);
  
  fill(145);
  ellipse(225, 80, diameter, tall);
  
  fill(85);
  ellipse(125, 90, diameter, tall);
  
  fill(90);
  ellipse(245, 95, diameter, tall);  
  
  fill(150);
  ellipse(170, 95, diameter, tall);
  
  fill (125);
  ellipse(210, 115, diameter, tall);

  fill (130);
  ellipse(125, 130, diameter, tall);

  fill(100);
  ellipse(150, 125, diameter, tall);
  
  fill(180);
  ellipse(180, 135, diameter, tall); 
  
  fill(160);
  ellipse(245, 135, diameter, tall);
    
  fill(75);
  ellipse(235, 170, diameter, tall);
  
  fill(155);
  ellipse(140, 170, diameter, tall);
  
  fill(185);
  ellipse(210, 170, diameter, tall);
  
  fill(110);
  ellipse(175, 175, diameter, tall);
  
  //testing
  fill(100);
  ellipse(130, 205, diameter, tall);
  
  fill(80);
  ellipse(160, 210, diameter, tall);
  
  fill(95);
  ellipse(220, 210, diameter, tall);
 
  //lightest, middle
  fill(190);
  ellipse(190, 220, diameter, tall);
  
  //testing3
  fill(150);
  ellipse(145, 245, diameter, tall);
  
  fill(100);
  ellipse(175, 255, diameter, tall);
  
  //testing2
  fill(105);
  ellipse(250, 230, diameter, tall);
  
  fill(125);
  ellipse(210, 255, diameter, tall);
  
  fill(175);
  ellipse(195, 290, diameter, tall);
  
  //house begins 
  stroke(100);
  noFill();   
  beginShape();
  vertex(195, 500);
  vertex(225, 525);
  vertex(225, 595);
  vertex(165, 595);
  vertex(165, 525);
  vertex(195, 500);
  endShape();
  
  rect(175, 535, 15, 15);
  rect(200, 535, 15, 15);
  rect(185, 560, 20, 35);
  strokeWeight(4);
  point(200, 580);
  
  popMatrix();
}
