void setup() {
  size(400, 600);
  int cd = 100;
  background(255);
  fill(255);
  strokeWeight(3);
  line(100, 390, 215, 390);
  beginShape();
  fill(0);
  beginShape();
  vertex(60,130); //line 1 30
  vertex(130,215); // line 2 110
  vertex(87,195); // line 3 95
  vertex(100,270); // line 4 170
  vertex(60,170); //line 5 70
  vertex(95,185); //line 6 85
  vertex (60,130); // line 7 30
  endShape ();
  strokeWeight(6);
  fill(250);
  line(100, 390, 215, 390);
  ellipse(90,390, cd, cd); 
  ellipse(220,390, cd, cd);



 
  endShape();
  
  
  
}

