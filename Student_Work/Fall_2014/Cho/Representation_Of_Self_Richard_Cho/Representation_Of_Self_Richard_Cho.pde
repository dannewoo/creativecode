void setup() {
  size(550, 550);
  noStroke();
  background(102, 178, 255);
  colorMode(HSB, 360, 100, 100);
  
  pushMatrix();
  //First Rectangle (Top)
  translate(-250, -228);
  fill(224, 36.84, 52.5);
  rect(220, 220, 700, 225);
  popMatrix();
  
  pushMatrix();
  //Second Rectangle (Middle)
  translate(-220, -3);
  fill(230, 55, 81);
  rect(220, 220, 1000, 160);
  popMatrix();
  
  pushMatrix();
  //Third Rectangle (Bottom)
  translate(-300, 100);
  fill(230, 100, 101);
  rect(220, 220, 1000, 160);
  popMatrix();
  
  pushMatrix();
  //Centered Triangle
  translate(width/2 - 70, height/2 - -164);
  fill(2, 2, 100);
  strokeWeight(2);
  stroke(360, 64, 67);
  triangle(-50, 110, 68, -400, 180, 110);
  popMatrix();
  
  pushMatrix();
  //Top Left Triangle
  
  popMatrix();
  
  pushMatrix();
  //Top Right Triangle
  
  popMatrix();
  
}
