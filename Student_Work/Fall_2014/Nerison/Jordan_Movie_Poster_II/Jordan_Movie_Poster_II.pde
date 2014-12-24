void setup() {
  size(700, 500);
  background(50);

//coat jacket torso
fill(250);
noStroke();
beginShape();
vertex(220, 250);
vertex(360, 175);
vertex(480, 270);
vertex(445, 450);
vertex(235, 450);
endShape();

//shirt
fill(200);
stroke(0);
strokeWeight(1);
triangle(300, 250, 400, 250, 350, 450);

//collar
fill(250);
stroke(0);
strokeWeight(1);
triangle(285, 220, 307, 265, 270, 290);
triangle(400, 220, 390, 265, 427, 290);
//pushMatrix();
//translate(160, 0);
//triangle(240, 250, 300, 250, 270, 290);
//popMatrix();

//bowtie
fill(0);
noStroke();
pushMatrix();
translate(0, 15);
ellipse(350, 255, 25, 20);
triangle(310, 255, 350, 250, 325, 275);
triangle(390, 255, 350, 250, 380, 275);
popMatrix();

//head
fill(230);
ellipseMode(CENTER);
ellipse(345, 180, 140, 168);


//Hair
fill(50);
beginShape();
vertex(250, 200);
vertex(300, 90);
vertex(400, 90);
vertex(425, 200);
vertex(380, 145);
vertex(350, 160);
vertex(315, 142);
endShape();

//head stroke
noFill();
stroke(250);
strokeWeight(1);
ellipseMode(CENTER);
ellipse(345, 180, 140, 168);


//ellipse(width/2, 110, 170, 120);
//fill(230);
//ellipse(290, 150, 20, 30);



//table
fill(0);
noStroke();
rect(0, 400, width, 100);

//Left Arm
fill(250);
beginShape();
vertex(220, 250);
vertex(240, 340);
vertex(200, 400);
vertex(310, 420);
vertex(230, 455);
vertex(100, 415);
endShape();

//Left Hand
//fill(230);
//ellipse(270, 452, 20, 30);

//Right Arm
fill(250);
beginShape();
vertex(480, 270);
vertex(580, 420);
vertex(400, 470);
vertex(350, 440);
vertex(473, 383);
vertex(460, 350);
endShape();

//Bottle of Gin black
noFill();
stroke(0);
strokeWeight(1);
pushMatrix();
translate(40, -60);
beginShape();
vertex(34, 549);
vertex(34, 449);
vertex(59, 449);
vertex(59, 399);
vertex(74, 399);
vertex(74, 449);
vertex(99, 449);
vertex(99, 549);
vertex(64, 555);
vertex(34, 549);
endShape();
popMatrix();


//Bottle of Gin white
noFill();
stroke(250);
strokeWeight(2);
pushMatrix();
translate(40, -60);
beginShape();
vertex(35, 550);
vertex(35, 450);
vertex(60, 450);
vertex(60, 400);
vertex(75, 400);
vertex(75, 450);
vertex(100, 450);
vertex(100, 550);
vertex(64, 560);
vertex(35, 550);
endShape();
popMatrix();

//glass
beginShape();
vertex(300, 450);
vertex(290, 408);
vertex(340, 408);
vertex(330, 450);
vertex(300, 450);
endShape();
}
