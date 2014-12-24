int z = 130;
float y = 100;
float speed = 0;
float gravity = 0.2;

void setup() {
  size(600, 600);
  background(100, 180, 255);
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  
  
}
void draw() {
  pushMatrix();
  //First Rectangle (Bottom)
  translate(0, 300);
  fill(224, 36.84, 52.5);
  rect(220, 220, 1000, 160);
  popMatrix();
  
  pushMatrix();
  //Second Rectangle (Middle)
  translate(0, 150);
  fill(230, 55, 81);
  rect(220, 220, 1000, 160);
  popMatrix();
  
  pushMatrix();
  //Third Rectangle (Top)
  fill(220, 150, 150);
  rect(220, 220, 1000, 160);
  popMatrix();
  
  pushMatrix();
  //Centered Triangle
  translate(width/2 - 60, height/2 - -188);
  fill(360, 10, 68);
  strokeWeight(2);
  stroke(360, 65, 70);
  triangle(-50, 110, 68, -400, 180, 110);
  popMatrix();

// background(210, 61, 100);
 y = y + speed;
 speed = speed + gravity;
 if(y > height - z/2) {
   speed = speed * -0.95;
 }
 fill(50, 100, 100);
 ellipse(100, y, z, z);
 ellipse(500, y, z, z);
// ellipse(width/2, y, z/2, z/2);
 
  
}
