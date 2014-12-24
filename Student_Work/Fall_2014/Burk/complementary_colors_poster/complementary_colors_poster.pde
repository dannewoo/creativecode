int origColor = 205;

void setup(){
  size(400, 600);
  rectMode(CENTER);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  background(163, 47, 77);
  
  // airplane
  pushMatrix();
  fill((origColor + 180) % 360, 80, 80);
  beginShape();
  rotate(PI/TWO_PI);
  translate(width/2.5 - 100, height/5 - 250);
  vertex(200, 90);
  vertex(192, 100);
  vertex(192, 135);
  vertex(150, 160);
  vertex(150, 165);
  vertex(192, 160);
  vertex(192, 190);
  vertex(180, 205);
  vertex(180, 210);
  vertex(192, 203);
  vertex(196, 203);
  vertex(196, 204);
  vertex(200, 208);
  vertex(204, 204);
  vertex(204, 203);
  vertex(208, 203);
  vertex(220, 210);
  vertex(220, 205);
  vertex(208, 190);
  vertex(208, 190);
  vertex(208, 160);
  vertex(250, 165);
  vertex(250, 160);
  vertex(208, 135);
  vertex(208, 100);
  vertex(200, 90);
  endShape();
  popMatrix();
  
  // pencil
  pushMatrix();
  fill((origColor + 180) % 360, 80, 80);
  beginShape();
  rotate(PI/TWO_PI);
  translate(width/2.5 - 40, height/5 - 260); 
  rect(200, 245, 28, 10, 7);
  
  fill(0, 0, 100);
  rect(200, 260, 28, 12);
  
  fill(0, 0, 100);
  rect(190, 311, 8, 82);
  
  fill((origColor + 180) % 360, 80, 80);
  rect(200, 311, 8, 82);
  
  fill(0, 0, 100);
  rect(210, 311, 8, 82);
  
  fill(0, 0, 100);
  quad(185, 355, 215, 355, 207, 368, 193, 368);
  
  fill((origColor + 180) % 360, 80, 80);
  triangle(194, 371, 206, 371, 200, 380);
  popMatrix();
  
  // coffee cup
  fill(0, 0, 100);
  quad(180, 410, 220, 410, 225, 415, 175, 415);
  
  fill(0, 0, 100);
  quad(175, 417, 225, 417, 230, 422, 170, 422);
  
  fill(0, 0, 100);
  quad(170, 424, 230, 424, 220, 510, 180, 510);
  
  fill((origColor + 180) % 360, 80, 80);
  quad(170, 440, 230, 440, 225, 480, 175, 480);
  
}
