void setup() {
  size(600,400);
  colorMode(HSB);
  background(279,92,100);
  
   //glasses R
  fill(279,92,50);
  stroke(279,92,0);
  strokeWeight(10);
  beginShape();
  vertex(0,30);
  curveVertex(0,30);
  curveVertex(250,30);
  curveVertex(250,280);
  curveVertex(150,400);
  curveVertex(0,400);
  curveVertex(0,400);
  endShape(); 
       
 //middle piece
  fill(0);
 beginShape();
   vertex(243,150);
   vertex(300,100);
   vertex(360,150);
   vertex(360,170);
   vertex(300,120);
   vertex(250,170);
   vertex(243,150);
 endShape();
  
  //glasses L
  fill(279,92,15);
  stroke(0);
  strokeWeight(10);
  beginShape();
  vertex(600,30);
  curveVertex(600,30);
  curveVertex(350,30);
  curveVertex(350,280);
  curveVertex(450,400);
  curveVertex(600,400);
  curveVertex(600,400);
  endShape();

  
}
