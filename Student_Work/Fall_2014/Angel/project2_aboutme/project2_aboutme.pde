int firstX = 292;
int pointY = 332;
int secondX = 439;

void setup () {
  colorMode(HSB, 360, 100, 100);
  size(500,700);
  background(184, 50, 81);
  
  //ellipses
  pushMatrix();
  rotate(PI/7);
  translate(140, -125);
  strokeWeight(1);
  noFill();
  ellipse(265, 365, 650, 300); 
  popMatrix();
  
  ellipse(270, 115, 775, 250);
  
  //music note
  stroke(40, 52, 100);
  strokeWeight(3);
  line(91, 61, 91, 160);
  line(173, 47, 173, 145);
  strokeWeight(10);
  line(92, 64, 173, 50);
  noStroke();
  fill(40, 52, 100);
  ellipse(80, 170, 37, 30);
  ellipse(157, 150, 37, 30);  
  
  //frame
  noStroke();
  fill(2, 34, 97);
  rect(325, 40, 130, 130);
  fill(0, 23, 96);
  rect(340, 55, 100, 100);
  stroke(0);
  strokeWeight(6);
  point(390, 48);
  
  //stickfigures
  stroke(0, 0, 100);
  strokeWeight(1);
  //person1
  ellipse(370, 110, 15, 15);
  beginShape();
  vertex(370, 117);
  vertex(370, 143);
  vertex(364, 153);
  endShape();
  line(370, 143, 376, 153);
  line(370, 130, 361, 121);
  line(370, 130, 379, 121);
  //person2
  ellipse(391, 115, 11, 11);
  beginShape();
  vertex(391, 120);
  vertex(391, 146);
  vertex(385, 154);
  endShape();
  line(391, 146, 397, 154);
  line(391, 133, 384, 125);
  line(391, 133, 398, 125);
  //person3
  ellipse(410, 112, 13, 13);
  beginShape();
  vertex(410, 118);
  vertex(410, 145);
  vertex(402, 155);
  endShape();
  line(410, 145, 418, 155);
  line(410, 135, 404, 125);
  line(410, 135, 416, 125);
  
  //bike
  noFill();
  stroke(1, 61, 94);
  ellipse(80, 365, 58, 58);
  ellipse(193, 397, 58, 58);
  //outline
  beginShape();
  vertex(193, 397);
  vertex(133, 380);
  vertex(111, 330);
  endShape();
  beginShape();
  vertex(80, 365);
  vertex(132, 306);
  vertex(126, 283);
  endShape();
  line(132, 306, 156, 307);
  line(138, 381, 152, 350);
  strokeWeight(4);
  line(141, 345, 165, 352);
  fill(1, 61, 94);
  ellipse(80, 365, 8, 8);
  ellipse(193, 397, 8, 8);
 
  
  //bookshelf & books
  noStroke();
  fill(39, 51, 100);
  rect(250, 425, 250, 7);
  fill(180, 46, 69);
  rect(288, 300, 145, 30);
  fill(0, 31, 95);
  rect(290, 360, 150, 35);
  fill(186, 31, 88);
  rect(289, 395, 150, 32);  
  //reversebook
  stroke(182, 56, 55);
  strokeWeight(2);
  line(291, 330, 441, 330);
  line(291, 360, 441, 360);
  //pages from top to bottom
  stroke(0, 0, 100);
  strokeWeight(1/2);
  line(firstX, pointY, secondX, pointY);
  line(firstX, pointY + 2, secondX, pointY + 2);
  line(firstX, pointY + 3, secondX, pointY + 3);
  line(firstX, pointY + 5, secondX, pointY + 5);
  line(firstX, pointY + 7, secondX, pointY + 7);
  line(firstX, pointY + 9, secondX, pointY + 9);
  line(firstX, pointY + 10, secondX, pointY + 10);
  line(firstX, pointY + 12, secondX, pointY + 12);
  line(firstX, pointY + 13, secondX, pointY + 13);
  line(firstX, pointY + 15, secondX, pointY + 15);
  line(firstX, pointY + 16, secondX, pointY + 16);
  line(firstX, pointY + 18, secondX, pointY + 18);
  line(firstX, pointY + 20, secondX, pointY + 20);
  line(firstX, pointY + 21, secondX, pointY + 21);
  line(firstX, pointY + 23, secondX, pointY + 23);
  line(firstX, pointY + 25, secondX, pointY + 25);

  //mouse drawing & horizontal lines
  stroke(0);
  fill(0, 0, 100);
  strokeWeight(1);
  ellipse(250, 560, 190, 275);
  line(0, 525, 500, 525);
  line(250, 525, 250, 0);
  line(0, 265, 500, 265);
  strokeWeight(7);
  point(250, 518);
  
  //ipad
 pushMatrix();
 rotate(PI/9);
 translate(530, 5);
 strokeWeight(1);
 fill(0, 0, 100);
 rect(10, 417, 65, 95);
 fill(0);
 rect(18, 426, 49, 70);
 strokeWeight(7);
 point(44, 503);
 popMatrix();
 
 
}
