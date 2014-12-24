int sideLength = 100;
int sidePoint = 25;

void setup() {
  size(500, 500);
  background(255);
  //draw a Garnet
  noStroke();
  
  beginShape();
    // Bright red
  fill(175,10,0);
  vertex(sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength, sideLength+sidePoint);
  vertex(sideLength+sidePoint, sideLength+sidePoint*2);
  vertex(sideLength+sidePoint*1/2, sideLength*2+sidePoint);
  vertex(sidePoint*3, sideLength*2+sidePoint*2);
  vertex(sidePoint*2, sideLength*2+sidePoint*2);
  endShape();
  
  beginShape();
    // Bright red
  fill(255,0,0);
  vertex(sideLength, sideLength+sidePoint);
  vertex(sideLength+sidePoint, sideLength+sidePoint*2);
  vertex(sideLength*2+sidePoint, sideLength+sidePoint*1/2);
  vertex(sideLength*2+sidePoint*2, sideLength);
  vertex(sideLength*2+sidePoint*3, sideLength+sidePoint*1/2);
  vertex(sideLength*3+sidePoint*2, sideLength+sidePoint*2);
  vertex(sideLength*3+sidePoint*3, sideLength+sidePoint);
  vertex(sideLength*2+sidePoint*2, sidePoint*2);
  vertex(sideLength, sideLength+sidePoint);
  endShape();
  
  beginShape();
      // dark red
  fill(107,0,0);
  vertex(sideLength*2+sidePoint, sideLength+sidePoint*1/2);
  vertex(sideLength*2+sidePoint*2, sideLength);
  vertex(sideLength*2+sidePoint*3, sideLength+sidePoint*1/2);
  vertex(sideLength*2+sidePoint*2, sideLength+sidePoint);
  vertex(sideLength*2+sidePoint, sideLength+sidePoint*1/2);
  endShape();
  
  beginShape();
      // dark red
  fill(227,50,0);
  vertex(sideLength*3+sidePoint*2, sideLength+sidePoint*2);
  vertex(sideLength*3+sidePoint*3, sideLength+sidePoint);
  vertex(sideLength*4+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength*4, sideLength*2+sidePoint*2);
  vertex(sideLength*3+sidePoint*2, sideLength+sidePoint*2);
  endShape();
  
  beginShape();
      // dark red
  fill(180,30,0);
  vertex(sideLength*4+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength*3+sidePoint*3, sideLength*3+sidePoint*3);
  vertex(sideLength*3+sidePoint*2, sideLength*3+sidePoint*2);
  vertex(sideLength*4, sideLength*2+sidePoint*2);
  vertex(sideLength*4+sidePoint*2, sideLength*2+sidePoint*2);
  endShape();
  
  beginShape();
      // dark red
  fill(200,20,0);
  vertex(sideLength*3+sidePoint*2, sideLength*3+sidePoint*2);
  vertex(sideLength*3+sidePoint*3, sideLength*3+sidePoint*3);
  vertex(sideLength*3, sideLength*4+sidePoint*2);
  vertex(sideLength*2+sidePoint*2, sideLength*4);
  vertex(sideLength*2+sidePoint*3, sideLength*3+sidePoint*3);
  vertex(sideLength*3+sidePoint*2, sideLength*3+sidePoint*2);
  endShape();
  
  beginShape();
      // dark red
  fill(190,20,20);
  vertex(sideLength*2+sidePoint*2, sideLength*4);
  vertex(sideLength*3, sideLength*4+sidePoint*2);
  vertex(sideLength+sidePoint*2, sideLength*4);
  vertex(sideLength+sidePoint*3, sideLength*3+sidePoint*3);
  vertex(sideLength*2+sidePoint*2, sideLength*4);
  endShape();
  
  beginShape();
      // dark red
  fill(180,10,0);
  vertex(sideLength+sidePoint*3, sideLength*3+sidePoint*3);
  vertex(sideLength+sidePoint*2, sideLength*4);
  vertex(sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sidePoint*3, sideLength*2+sidePoint*2);
  vertex(sideLength+sidePoint, sideLength*2+sidePoint*2);
  vertex(sideLength+sidePoint*2, sideLength*2+sidePoint*3);
  vertex(sideLength+sidePoint*3, sideLength*3+sidePoint*3);
  endShape();
  
  beginShape();
      // dark red
  fill(150,0,0);
  vertex(sidePoint*3, sideLength*2+sidePoint*2);
  vertex(sideLength+sidePoint, sideLength*2+sidePoint*2);
  vertex(sideLength+sidePoint*1/2, sideLength*2+sidePoint);
  vertex(sidePoint*3, sideLength*2+sidePoint*2);
  endShape();

 
  beginShape();
      // dark red
  fill(250,0,0);
  vertex(sideLength+sidePoint*1/2, sideLength*2+sidePoint);
  vertex(sideLength+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength+sidePoint*2, sideLength*2+sidePoint*3);
  vertex(sideLength+sidePoint, sideLength*2+sidePoint*2);
  vertex(sideLength+sidePoint*1/2, sideLength*2+sidePoint);
  endShape();

  beginShape();
      // dark red
  fill(210,0,0);
  vertex(sideLength+sidePoint*1/2, sideLength*2+sidePoint);
  vertex(sideLength+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength*2+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength*2+sidePoint*3, sideLength+sidePoint*1/2);
  vertex(sideLength*2+sidePoint*2, sideLength+sidePoint);
  vertex(sideLength*2+sidePoint, sideLength+sidePoint*1/2);
  vertex(sideLength+sidePoint, sideLength+sidePoint*2);
  vertex(sideLength+sidePoint*1/2, sideLength*2+sidePoint);
  endShape();
  
  beginShape();
      // dark red
  fill(190,0,0);
  vertex(sideLength*2+sidePoint*3, sideLength+sidePoint*1/2);
  vertex(sideLength*2+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength*4, sideLength*2+sidePoint*2);
  vertex(sideLength*3+sidePoint*2, sideLength+sidePoint*2);
  vertex(sideLength*2+sidePoint*3, sideLength+sidePoint*1/2);
  endShape();

  beginShape();
      // dark red
  fill(170,0,0);
  vertex(sideLength*4, sideLength*2+sidePoint*2);
  vertex(sideLength*2+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength*2+sidePoint*2, sideLength*4);
  vertex(sideLength*2+sidePoint*3, sideLength*3+sidePoint*3);
  vertex(sideLength*3+sidePoint*2, sideLength*3+sidePoint*2);
  vertex(sideLength*4, sideLength*2+sidePoint*2);
  endShape();

  beginShape();
    // dark red
  fill(127,0,0);
  vertex(sideLength*2+sidePoint*2, sideLength*2+sidePoint*2);
  vertex(sideLength*2+sidePoint*2, sideLength*4);
  vertex(sideLength+sidePoint*3, sideLength*3+sidePoint*3);
  vertex(sideLength+sidePoint*2, sideLength*2+sidePoint*3);
  vertex(sideLength+sidePoint, sideLength*2+sidePoint*2);
  vertex(sideLength*2+sidePoint*2, sideLength*2+sidePoint*2);
  endShape();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
