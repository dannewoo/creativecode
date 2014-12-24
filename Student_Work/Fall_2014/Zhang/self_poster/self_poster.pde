int rectSize=20;

void setup(){
  size(600,400);
  background(120, 60, 150);
  noStroke();
  pushMatrix();
  translate(300, 200);
  rotate(PI/2.0);
  //no.4
   fill(120, 50, 100);
  rect(0, 0, rectSize*3, rectSize*3);
  fill(50,40,100);
  rect(0, 0, rectSize*2, rectSize*2);
  fill(120, 50, 100);
  rect(0, 0, rectSize, rectSize);
  fill(120, 50, 100);
  rect(rectSize, rectSize, rectSize*2, rectSize*2);
  fill(50,40,110);
  rect(rectSize, rectSize*2, rectSize, rectSize);
  fill(50,40,110);
  rect(rectSize*2, rectSize, rectSize, rectSize);
  fill(50,40,110);
  rect(rectSize*2, rectSize*3, rectSize, rectSize);
  fill(50, 40, 110);
  rect(rectSize*3, rectSize*2, rectSize, rectSize);
 fill(50,40,110);
  rect(rectSize*4, rectSize*3, rectSize, rectSize);
  fill(50,40,110);
  rect(rectSize*4, rectSize*2, rectSize, rectSize);
  popMatrix();
  
  
  pushMatrix();
  translate(300,100);
  rotate(HALF_PI);
  //no.3
  fill(120, 50, 0);
  rect(0, 0, rectSize*3, rectSize*3);
  fill(60,50,100);
  rect(0, 0, rectSize*2, rectSize*2);
  fill(120, 50, 0);
  rect(0, 0, rectSize, rectSize);
  fill(120, 50, 0);
  rect(rectSize, rectSize, rectSize*2, rectSize*2);
  fill(60,50,100);
  rect(rectSize, rectSize*2, rectSize, rectSize);
  fill(60,50,100);
  rect(rectSize*2, rectSize, rectSize, rectSize);
  fill(60,50,100);
  rect(rectSize*2, rectSize*3, rectSize, rectSize);
  fill(60, 50, 100);
  rect(rectSize*3, rectSize*2, rectSize, rectSize);
  popMatrix();
  
  pushMatrix();
  translate(300,100);
  rotate(TWO_PI);
  //no.2
  fill(120, 50, 0);
  rect(0, 0, rectSize*3, rectSize*3);
  fill(60,50,100);
  rect(0, 0, rectSize*2, rectSize*2);
  fill(120, 50, 0);
  rect(0, 0, rectSize, rectSize);
  fill(120, 50, 0);
  rect(rectSize, rectSize, rectSize*2, rectSize*2);
  fill(60,50,100);
  rect(rectSize, rectSize*2, rectSize, rectSize);
  fill(60,50,100);
  rect(rectSize*2, rectSize, rectSize, rectSize);
  fill(60,50,100);
  rect(rectSize*2, rectSize*3, rectSize, rectSize);
  fill(60, 50, 100);
  rect(rectSize*3, rectSize*2, rectSize, rectSize);
  popMatrix();
  
  pushMatrix();
  translate(300,200);
  rotate(TWO_PI);
  //no#1
   fill(120, 50, 100);
  rect(0, 0, rectSize*3, rectSize*3);
  fill(50,40,100);
  rect(0, 0, rectSize*2, rectSize*2);
  fill(120, 50, 100);
  rect(0, 0, rectSize, rectSize);
  fill(120, 50, 100);
  rect(rectSize, rectSize, rectSize*2, rectSize*2);
  fill(50,40,110);
  rect(rectSize, rectSize*2, rectSize, rectSize);
  fill(50,40,110);
  rect(rectSize*2, rectSize, rectSize, rectSize);
  fill(50,40,110);
  rect(rectSize*2, rectSize*3, rectSize, rectSize);
  fill(50, 40, 110);
  rect(rectSize*3, rectSize*2, rectSize, rectSize);
  fill(50,40,110);
  rect(rectSize*3, rectSize*4, rectSize, rectSize);
  fill(50,40,110);
  rect(rectSize*2, rectSize*4, rectSize, rectSize);
  popMatrix();
   
  fill(70.110,110);
  ellipse(280,180, 30, 40);
  ellipse(320,180, 30, 40);
   
}
