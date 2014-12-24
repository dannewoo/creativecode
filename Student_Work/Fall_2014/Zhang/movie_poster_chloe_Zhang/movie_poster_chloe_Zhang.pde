void setup() {
  size(500, 500);
  background (0);
  noStroke();
  
  ellipseMode(CENTER);
  fill(200);
  ellipse(140, 160,100,100);
  ellipse(width/2, height/2, 190, 190);
  ellipse(360, 160, 100,100);
  
  fill(255);
  ellipse(210,250, 100,120);
  ellipse(290,250, 100,120);
  
  fill(70);
  ellipse(230,250, 40, 70);
  ellipse(270,250, 40, 70);
  
  fill(255);
  translate(width/2 - 85, height/2 + 40);
  beginShape();
  vertex(0,0);
  bezierVertex (60, 150, 220, 0, 150, 0);
endShape();

}
