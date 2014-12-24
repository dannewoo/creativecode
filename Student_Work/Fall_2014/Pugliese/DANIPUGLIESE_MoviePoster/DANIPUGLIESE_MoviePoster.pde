void setup() {
  size(400, 400);
  background(0);
  
 
  fill(255);
  ellipse(width/2, height/2 + 15, 250, 250);
  
  fill(255);
  ellipse(width/2, height/2 - 30, 300, 300);
  
  noStroke();
  
  pushMatrix();
  fill(0);
  translate(width/2 + 75, height/2);
  rotate(HALF_PI - 15);
  ellipse(0, 0, 150, 100);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 - 75, height/2);
  rotate(HALF_PI +15);
  ellipse(0, 0, 150, 100);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 - 25, height/2 + 55);
  triangle(20, 0, 10, 15, 0, 10);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 + 25, height/2 + 55);
  rotate(HALF_PI);
  triangle(10, 0, 15, 10, 0, 20);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 - 35, height/2 + 110);
  triangle(20, 0, 5, 15, 0, 10);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 - 75, height/2 + 100);
  triangle(20, 0, 5, 15, 0, 10);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 - 100, height/2 + 85);
  triangle(20, 0, 5, 15, 0, 10);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 + 25, height/2 + 110);
  rotate(HALF_PI);
  triangle(10, 0, 15, 5, 0, 20);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 + 70, height/2 + 100);
  rotate(HALF_PI);
  triangle(10, 0, 15, 5, 0, 20);
  popMatrix();
  
  pushMatrix();
  fill(0);
  translate(width/2 + 100, height/2 + 85);
  rotate(HALF_PI);
  triangle(10, 0, 15, 5, 0, 20);
  popMatrix();
  
  
}

