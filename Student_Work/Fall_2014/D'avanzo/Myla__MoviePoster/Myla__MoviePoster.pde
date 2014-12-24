void setup() {
  size(500, 700);
  background(170);
  noStroke();
   
  //Backgroun Mountain  Left
  fill(100);
  pushMatrix();
  translate(-60, 670);
  triangle(150, -350, 300, 30, 0, 30);
  popMatrix();
  
  //Backgroun Mountain  Right
  fill(120);
  pushMatrix();
  translate(180, 1000);
  triangle(200, -700, 400, -300, 0, -300);
  popMatrix();
    
  //Mountain
  fill(70);
  pushMatrix();
  translate(width/2-200, 680);
  triangle(200, -430, 400, 25, -0, 25);
  popMatrix();
  
  //Ring
  pushMatrix();
  fill(215);
  translate(width/2 - 50, 100);
  ellipse(50, 50, 130, 130);
  popMatrix();
  
  //Inner Circle
  pushMatrix();
  fill(170);
  translate(width/2 - 50, 100);
  ellipse(50, 50, 90, 90);
  popMatrix();
  
  //Sam Body
  pushMatrix();
  fill(200);
  translate(width/2 - 50, 100);
  rect(-40, 580, 13, 20);
  popMatrix();
  //Sam Head
  pushMatrix();
  fill(200);
  translate(width/2 - 50, 100);  
  ellipse(-53, 570, 13, 13);
  popMatrix();
  
  //Frodo
  //Frodo Body
  pushMatrix();
  fill(200);
  translate(width/2 - 50, 100);
  rect(-60, 580, 13, 20);
  popMatrix();
  //Frodo Head
  pushMatrix();
  fill(200);
  translate(width/2 - 50, 100);  
  ellipse(-33, 570, 13, 13);
  popMatrix();
  
  //Gollum
  //Gollum Body
  pushMatrix();
  fill(200);
  translate(width/2 - 50, 100);
  rect(-20, 588, 8, 40);
  popMatrix();
  //Gollum Head
  pushMatrix();
  fill(200);
  translate(width/2 - 50, 100);  
  ellipse(-16, 580, 11, 11);
  popMatrix();
  
  }
