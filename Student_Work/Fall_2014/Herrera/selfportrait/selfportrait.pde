void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  background(188, 53, 66); // base teal
  
  //coffee mug rectangle
  fill(188, 53, 29);
  stroke(188, 53, 29);
  rect(200, 300, 200, 200);
  
  //top of coffee rim
  fill(188, 53, 29);
  stroke(188, 53, 29);
  ellipse(300, 300, 200, 65);
  
  //inner coffee
  fill(9, 42, 34); //dark brown 
  stroke(9, 42, 34);
  ellipse(300, 300, 175, 50);
  
  //bottom of coffee
  fill(188, 53, 29); //dark teal
  stroke(188, 53, 29);
  ellipse(300, 500, 200, 65); //bottom of mug
  
  //coffee mug handle
  fill(188, 53, 29);
  stroke(188, 53, 29);
  rect(385, 325, 60, 150, 7);
  
  //mug handle inside
  fill(188, 53, 66);
  stroke(188, 53, 66);
  rect(400, 343, 30, 115, 7);
  
  //moon base, medium teal
  fill(188, 53, 43);
  stroke(188, 53, 43);
  ellipse(300, 415, 125, 125);
  
  //moon ellipse
  fill(188, 53, 29);
  stroke(188, 53, 29);
  ellipse(315, 400, 100, 100);
  
  //musical note vertical bar 1
  pushMatrix();
  translate(205, 2);
  fill(188, 53, 29); //medium teal
  stroke(188, 53, 29);
  rect(50, 50, 20, 100);
  
  //musical note vertical bar 2
  fill(188, 53, 29); //medium teal
  stroke(188, 53, 29);
  rect(150, 50, 20, 100);
  
  //musical note horizontal bar 3
  fill(188, 53, 29); //medium teal
  stroke(188, 53, 29);
  rect(50, 40, 120, 30);
  
  //musical note left ellipse 
  fill(188, 53, 29); //medium teal
  stroke(188, 53, 29);
  strokeWeight(1.5);
  ellipse(40, 145, 60, 35);
  
  //musical note right ellipse
  fill(188, 53, 29); //medium teal
  stroke(188, 53, 29);
  strokeWeight(1.5);
  ellipse(140, 145, 60, 35);
  popMatrix();
  
  //pencil base
  pushMatrix();
  rotate(30);
  translate(-240, -80);
  fill(9, 42, 52); //light brown
  stroke(9, 42, 34);
  rect(50, 300, 25, 200);
  
  //pencil large tip
  fill(188, 53, 43);
  stroke(188, 53, 43);
  triangle(62, 266, 50, 300, 75, 300);
  
  //pencil tip
  fill(9, 42, 34); //dark brown 
  stroke(9, 42, 34);
  triangle(62, 266, 57, 280, 67, 280);
 
  //pencil eraser
  fill(9, 42, 34); //dark brown 
  stroke(9, 42, 34);
  rect(51, 510, 23, 15, 8);
  
  //pencil metal
  fill(188, 53, 43);
  stroke(188, 53, 43);
  rect(50, 500, 25, 15);
  
  //pencil line
  stroke(9, 42, 34); 
  line(62, 301, 62, 499);
  popMatrix();
  
 //border
  stroke(9, 42, 34);
  strokeWeight(10);
  noFill();
  rect(120, 10, 375, 580);
  
  
}
