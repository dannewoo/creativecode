int sideLength = 100;
int sidePoint = 25;

void setup() {
  size(500, 700);
  background(125);
  noStroke();
  // Number of frames per second
  frameRate(3);
  colorMode(HSB, 360, 100, 100, 100);
}

  void draw() {
    
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
  
  float randomsize2 = random(10, 20);
  fill(random(0, 360), 80, 100, random(100));
  ellipse(random(0, width), random(0, height), randomsize2, randomsize2);
  
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
 
  float randomsize3 = random(15, 25);
  fill(random(0, 360), 80, 100, random(100));
  ellipse(random(0, width), random(0, height), randomsize3, randomsize3);
 
  triangle(sideLength + sidePoint*2, sideLength*2, sideLength*2 + sidePoint, sideLength*2+ sidePoint, sideLength*2, sideLength*2+ sidePoint*2);
  
  float randomsize1 = random(20, 30);
  fill(random(0, 360), 80, 100, random(100));
  ellipse(random(0, width), random(0, height), randomsize1, randomsize1);
  ellipse(sideLength*3.5+sidePoint*2, sideLength, sideLength, sideLength);
  


  float randomsize = random(25, 50);
  fill(random(0, 360), 80, 100, random(100));
  ellipse(random(0, width), random(0, height), randomsize, randomsize);
}





