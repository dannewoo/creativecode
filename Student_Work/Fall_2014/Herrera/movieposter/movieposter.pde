void setup() {
  rectMode(CORNER);
  size(600, 600);
  background(150);
  
  translate(150, 150);
  fill(0);
  rect(0, 0, 300, 200);
  
  stroke(0);
  strokeWeight(10);
  fill(150);
  rect(100, -30, 100, 30);
  
  stroke(0);
  strokeWeight(3);
  fill(200);
  rect(30,0, 30, 200);
  
  stroke(0);
  strokeWeight(3);
  fill(200);
  rect(240,0, 30, 200);
  
  translate(200, 175);
  rotate(PI);
  fill(200);
  beginShape(); 
  vertex(50, 20); 
  vertex(100, 50); 
  vertex(100, 110); 
  vertex(0, 110); 
  vertex(0, 50); 
  vertex(50, 20); 
  endShape();
  
  fill(0);
  stroke(0);
  strokeWeight(3);
  ellipse(6, 103, 5, 5);
  
  fill(0);
  stroke(0);
  strokeWeight(3);
  ellipse(93, 103, 5, 5);
  
  stroke(255);
  strokeWeight(3);
  fill(255);
  translate(-205, -131);
  beginShape(); 
  vertex(0, 0); 
  vertex(300, 0); 
  vertex(400, 100); 
  vertex(100, 100);  
  vertex(0, 0); 
  endShape();
}

