int sideLength = 100;
int sidePoint = 25;

void setup() {
  size(500, 700);
  background(255);
  
  //draw a little house
  fill(0);
  noStroke();
  
  beginShape();
  vertex(0, 0);
  vertex(sidePoint*2, sideLength);
  vertex(sideLength*2, sidePoint*4);
  vertex(sideLength*2, sidePoint/2);
  vertex(sideLength*3, sidePoint*8);
  vertex(sideLength*2 + sidePoint*3, sidePoint*9);
  vertex(sideLength*3, sidePoint*10);
  vertex(sideLength*3, sideLength*4);
  vertex(sideLength*3 + sidePoint, sideLength*4 + sidePoint*2);
  vertex(sideLength*2, sideLength*4 + sidePoint*2);
  vertex(sideLength*2 + sidePoint, sideLength*5 + sidePoint*2);
  vertex(sideLength*5, sideLength*7);
  vertex(0, sideLength*7);
  endShape();
  
  fill(150);
  noStroke();
  
  beginShape();
  vertex(sideLength*2+sidePoint, sideLength*5 + sidePoint*2);
  vertex(sideLength*2 + sidePoint*2, sideLength*5 + sidePoint*2);
  vertex(sideLength*2+sidePoint*2, sideLength*5);
  vertex(sideLength*3+sidePoint*2, sideLength*5);
  vertex(sideLength*3+sidePoint*2, sideLength*3 + sidePoint);
  vertex(sideLength*4, sideLength*3+ sidePoint);
  vertex(sideLength*4, sideLength*5 + sidePoint*3);
  vertex(sideLength*4+sidePoint*3, sideLength*5 + sidePoint*3);
  vertex(sideLength*4+sidePoint*3, sideLength*4 + sidePoint*3);
  vertex(sideLength*5, sideLength*4 + sidePoint*3);
  vertex(sideLength*5, sideLength*7);
  vertex(sideLength*2+sidePoint, sideLength*5 + sidePoint*2);
  endShape();
  
  fill(255);
  triangle(sideLength + sidePoint*2, sideLength*2, sideLength*2 + sidePoint, sideLength*2+ sidePoint, sideLength*2, sideLength*2+ sidePoint*2);
  
  fill(0);
  ellipse(sideLength*3.5+sidePoint*2, sideLength, sideLength, sideLength);
  
}
