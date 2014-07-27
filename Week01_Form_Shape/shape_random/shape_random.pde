int maxPoints = 100;
int randomPlot = 300;

void setup() {
  size(600, 400);
  background(255);
  
  //draw random shape
  fill(0);
  noStroke();
  //stroke(0);
  //strokeWeight(3);
  translate(width/2 - randomPlot/2, height/2 - randomPlot/2);
  beginShape();
  for (int i = 0; i < maxPoints; i++) {
    vertex(random(randomPlot), random(randomPlot));
  }
  endShape();
}
