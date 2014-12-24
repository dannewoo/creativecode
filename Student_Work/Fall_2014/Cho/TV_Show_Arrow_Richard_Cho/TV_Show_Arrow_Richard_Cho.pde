void setup() {
 size(400, 600);
 background(32);
 
 //Arrow Middle
 pushMatrix();
 stroke(0);
 strokeWeight(1.7);
 translate(203, 190);
 rect(0, 0, 8, 280);
 popMatrix();

 //Arrowhead
 pushMatrix();
 fill(200);
 stroke(250);
 translate(140, 100);
 triangle(45,110,68,-3,90,110);
 popMatrix();
    
 //Arrow Frills Left
 pushMatrix();
 fill(255);
 noStroke();
 translate(193, 370);
 rotate(QUARTER_PI/2);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(192);
 noStroke();
 translate(193, 380);
 rotate(QUARTER_PI/2);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(255);
 noStroke();
 translate(193, 390);
 rotate(QUARTER_PI/2);
 rect(10, 10, 3, 35);
 popMatrix();  
 
 pushMatrix();
 fill(192);
 noStroke();
 translate(193, 400);
 rotate(QUARTER_PI/2);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(255);
 noStroke();
 translate(193, 410);
 rotate(QUARTER_PI/2);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(192);
 noStroke();
 translate(193, 420);
 rotate(QUARTER_PI/2);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(255);
 noStroke();
 translate(193, 430);
 rotate(QUARTER_PI/2);
 rect(10, 10, 3, 35);
 popMatrix();
 
  //Arrow Frills Right
 pushMatrix();
 fill(255);
 noStroke();
 translate(201, 380.5);
 rotate(100);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(192);
 noStroke();
 translate(201, 388.5);
 rotate(100);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(255);
 noStroke();
 translate(201, 398.5);
 rotate(100);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(192);
 noStroke();
 translate(201, 408.5);
 rotate(100);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(255);
 noStroke();
 translate(201, 418.5);
 rotate(100);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(192);
 noStroke();
 translate(201, 428.5);
 rotate(100);
 rect(10, 10, 3, 35);
 popMatrix();
 
 pushMatrix();
 fill(255);
 noStroke();
 translate(201, 438.5);
 rotate(100);
 rect(10, 10, 3, 35);
 popMatrix();
 
}
