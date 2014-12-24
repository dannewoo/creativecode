void setup() {
  size(400, 600);
  background(230);
  noStroke();
  fill(255);
  ellipse(width/2, height/2, 200, 200);
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(PI);
  triangle(0, -65, 25, 25, -25, 25);
  popMatrix();
  
  fill(230);
  rectMode(CENTER);
  rect(width/2, height/2, 175, 4);
  
  fill(230);
  rectMode(CENTER);
  rect(width/2, height/2, 4, 175);
  
   // waffle corner one
  fill(230);
  rect(width/2  - 50, height/2 - 20, 20, 20);
  
  fill(230);
  rect(width/2  - 75, height/2 - 20, 20, 20);
  
  fill(230);
  rect(width/2  - 25, height/2 - 20, 20, 20);
  
  fill(230);
  rect(width/2  - 25, height/2 - 45, 20, 20);
  
  fill(230);
  rect(width/2  - 50, height/2 - 45, 20, 20);
  
  fill(230);
  rect(width/2  - 25, height/2 - 70, 20, 20);
  
  fill (230);
  arc(width/2  - 40 , height/2 - 60, 40, 40, PI, PI+HALF_PI);
  
  fill (230);
  arc(width/2  - 65 , height/2 - 35, 40, 40, PI, PI+HALF_PI);
  
  fill(230);
  beginShape();
  vertex(width/2  - 25, height/2 - 70);
  
  
  // waffle corner two
  fill(230);
  rect(width/2  + 50, height/2 - 20, 20, 20);
  
  fill(230);
  rect(width/2  + 75, height/2 - 20, 20, 20);
  
  fill(230);
  rect(width/2  + 25, height/2 - 20, 20, 20);
  
  fill(230);
  rect(width/2  + 25, height/2 - 45, 20, 20);
  
  fill(230);
  rect(width/2  + 50, height/2 - 45, 20, 20);
  
  fill(230);
  rect(width/2  + 25, height/2 - 70, 20, 20);
  
  fill (230);
  arc(width/2  + 40 , height/2 - 60, 40, 40, PI+HALF_PI, TWO_PI);
  
  fill (230);
  arc(width/2  + 65 , height/2 - 35, 40, 40, PI+HALF_PI, TWO_PI);
  
  // waffle corner three
  fill(230);
  rect(width/2  - 50, height/2 + 20, 20, 20);
  
  fill(230);
  rect(width/2  - 75, height/2 + 20, 20, 20);
  
  fill(230);
  rect(width/2  - 25, height/2 + 20, 20, 20);
  
  fill(230);
  rect(width/2  - 25, height/2 + 45, 20, 20);
  
  fill(230);
  rect(width/2  - 50, height/2 + 45, 20, 20);
  
  fill(230);
  rect(width/2  - 25, height/2 + 70, 20, 20);
  
  fill (230);
  arc(width/2  - 40 , height/2 + 60, 40, 40, HALF_PI, PI);
  
  fill (230);
  arc(width/2  - 65 , height/2 + 35, 40, 40, HALF_PI, PI);
  
  // waffle corner four
  fill(230);
  rect(width/2  + 50, height/2 + 20, 20, 20);
  
  fill(230);
  rect(width/2  + 75, height/2 + 20, 20, 20);
  
  fill(230);
  rect(width/2  + 25, height/2 + 20, 20, 20);
  
  fill(230);
  rect(width/2  + 25, height/2 + 45, 20, 20);
  
  fill(230);
  rect(width/2  + 50, height/2 + 45, 20, 20);
  
  fill(230);
  rect(width/2  + 25, height/2 + 70, 20, 20);
  
  fill (230);
  arc(width/2  + 40 , height/2 + 60, 40, 40, 0, HALF_PI);
  
  fill (230);
  arc(width/2  + 65 , height/2 + 35, 40, 40, 0, HALF_PI);
}
