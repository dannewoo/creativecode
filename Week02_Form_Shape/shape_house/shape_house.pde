void setup() {
  size(600, 400);
  background(255);
  
  //draw a little house
  fill(0);
  noStroke();
  translate(width/2 - 100/2, height/2 - (100 + 50)/2);
  
  beginShape();
  vertex(100/2, 0);
  vertex(100, 50);
  vertex(100, 50 + 100);
  vertex(0, 50 + 100);
  vertex(0, 50);
  vertex(100/2, 0);
  endShape();

  fill(255);
  rect(100/2 - 10, 100/2, 20, 20);
}
