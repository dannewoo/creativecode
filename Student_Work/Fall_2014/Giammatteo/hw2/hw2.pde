void setup(){
 size(700, 900);
 colorMode(HSB, 360, 100, 100, 100);
 background(33, 100, 100);
 
//USB
 noFill();
 stroke(190, 93, 24);
 pushMatrix();
 strokeWeight(5);
 line(55, 410, 0, 410);
 popMatrix();
 strokeWeight(12);
 line(55, 410, 40, 410);
 
 noStroke();
 fill(203, 98, 49);
 rect(55, 360, 590, 395);
 
//right panel
 noStroke();
 fill(201, 93, 36);
 rect(540, 360, 105, 395);
 
//left panel
 noStroke();
 fill(200, 98, 62);
 rect(160, 445, 368, 225);
 
//top display
 noStroke();
 fill(199, 94, 40);
 rect(562, 450, 25, 54);
 
//bottom display
 noStroke();
 fill(199, 94, 40);
 rect(562, 606, 25, 54); 
 
//top buttons
 noStroke();
 fill(200, 98, 62);
 rect(593, 445, 35, 15);
 translate(0, 17);
 rect(593, 445, 35, 15);
 translate(0, 17);
 rect(593, 445, 35, 15);
 translate(0, 17);
 rect(593, 445, 35, 15);
 
//outer circle
 noStroke();
 fill(200, 98, 62);
 ellipse(598, 505, 62, 62);
 
//inner circle
 stroke(201, 93, 36);
 strokeWeight(2);
 fill(200, 98, 62);
 ellipse(598, 505, 29, 29);
 
//bottom buttons
 noStroke();
 fill(200, 98, 62);
 rect(593, 550, 35, 15);
 translate(0, 17);
 rect(593, 550, 35, 15);
 translate(0, 17);
 rect(593, 550, 35, 15);
 translate(0, 17);
 rect(593, 550, 35, 15);

}
