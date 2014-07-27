int sideLength = 100;
int housePoint = 50;

void setup() {
  size(600, 400);
  background(255);
  
  //draw a little house
  fill(0);
  noStroke();
  translate(width/2 - sideLength/2, height/2 - (sideLength + housePoint)/2);
  
  beginShape();
  vertex(sideLength/2, 0);
  vertex(sideLength, housePoint);
  vertex(sideLength, housePoint + sideLength);
  vertex(0, housePoint + sideLength);
  vertex(0, housePoint);
  vertex(sideLength/2, 0);
  endShape();

  fill(255);
  rect(sideLength/2 - 10, sideLength/2, 20, 20);
}
