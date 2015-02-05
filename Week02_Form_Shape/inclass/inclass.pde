String text = "Hello class.";
int intNum = 73;
float floatNum = 1.618;

void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
  stroke(100);
  strokeWeight(8);
  line(0, height/2, width, height/2);
  stroke(0);
  strokeWeight(3);
  rect(width/2, height/2, intNum, intNum);
  fill(0);
  noStroke();
  ellipse(width/2, height/2, 200, 50);
    pushMatrix();
      translate(width/2, height/2);
      rotate(radians(164));
      triangle(0, 0, 100, 50, 0, 100);
    popMatrix();
  noFill();
  stroke(100);
  strokeWeight(2);
  quad(0, 0, 200, 0, 175, 100, 25, 100);
  
//  beginShape();
//  vertex(0, 0);
//  vertex(100, 0);
//  vertex(150, 50);
//  vertex(100, 100);
//  vertex(0, 100);
//  endShape();
}








