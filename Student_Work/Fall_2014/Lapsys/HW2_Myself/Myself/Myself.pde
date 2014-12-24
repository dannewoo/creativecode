void setup(){
  //color vars
  int bc = 200;          //background color
  int cr = 30;          //something color
  
  //size vars
  int rw = 200;         //rectangle width
  int rr = 40;          //rectangle edge roundness
  int wc = width/2;     //width center
  int hc = height/2;    //height center
  int g = 200;          //grid unit length
  
  //position vars
  
  //canvas
  size(1800,1000);
  colorMode(HSB,360,100,100,100);
  rectMode(CENTER);
  ellipseMode(CENTER);
  background(bc, 80, 90);
  
  //Squares
  pushMatrix();
  strokeWeight(5);
  stroke(0,0,10,0);
  fill(bc,0,90,70);
  
  rect(g*2,g*2,760,760,rr);
  
  rect(g*5.5,g*1.5,560,560,rr);
  rect(g*7.5,g*4.5,560,560,rr);
  
  rect(g*3,g*5,360,360,rr);
  rect(g*8,g*2,360,360,rr);
  rect(g*5,g*4,360,360,rr);
  
  rect(g*1.5,g*4.5,160,160,rr);
  rect(g*7.5,g*0.5,160,160,rr);
  
  popMatrix();
  
  //Shape1: Audio
  pushMatrix();
  strokeWeight(20);
  stroke(0,0,100);
  fill(0,0,100,0);
  translate(g*2,g*2);
  translate(60,0);
  
  beginShape();
  vertex(-180,180);
  vertex(-220,160);
  vertex(-280,160);
  vertex(-280,-160);
  vertex(-220,-160);
  vertex(-180,-180);
  bezierVertex(-100,-80,-100,80,-180,180);
  endShape();
  
  bezier(-140,-200,   -60,-100,   -60,100,   -140,200);
  bezier(-100,-220,   -10,-120,   -10,120,   -100,220);
  bezier(-60,-240,     40,-140,    40,140,   -60,240);
  bezier(-20,-260,     90,-160,    90,160,   -20,260);
  bezier(20,-280,      140,-180,   140,180,   20,280);
  bezier(60,-300,      190,-200,   190,200,   60,300);
  
  popMatrix();
  
  //Shape2: Gaming
  pushMatrix();
  translate(g*5.5,g*1.5);
  strokeWeight(15);
  stroke(0,0,100);
  fill(0,0,100,0);
  ellipse(0,0,300,300);
  line(0,-200,0,200);
  line(-200,0,200,0);
  popMatrix();
  
  //Shape3: Graphics
  pushMatrix();
  translate(g*8,g*2);
  translate(-30,30);
  strokeWeight(10);
  
  line(-80,80,-80,-80);
  line(-80,-80,-20,-140);
  line(-20,-140,140,-140);
  line(140,-140,140,20);
  line(140,20,80,80);
  line(80,80,-80,80);
  
  line(80,-80,140,-140);
  line(80,-80,-80,-80);
  line(80,-80,80,80);
  
  popMatrix();
  
  //Shape4: Writing
  pushMatrix();
  translate(g*7.5,g*0.5);
  strokeWeight(5);
  
  line(-20,-40,40,-40);
  line(-40,-20,40,-20);
  line(-40,0,40,0);
  line(-40,20,40,20);
  line(-40,40,10,40);
  
  line(-50,-50,50,50);
  line(-50,50,50,-50);
  
  popMatrix();
  
  //Shape5: Eating
  pushMatrix();
  strokeWeight(10);
  translate(g*7.5,g*4.5);
  ellipse(0,0,340,340);
  ellipse(0,0,220,220);
  
  strokeWeight(10);
  beginShape();
  vertex(-200,140);
  vertex(-200,-140);
  bezierVertex(-200,-150,-210,-150,-220,-140);
  bezierVertex(-230,-120,-230,-60,-220,20);
  vertex(-220,140);
  bezierVertex(-215,150,-205,150,-200,140);
  endShape();
  
  beginShape();
  vertex(200,-60);
  vertex(200,140);
  bezierVertex(205,150,215,150,220,140);
  vertex(220,-60);
  bezierVertex(240,-60,240,-80,240,-150);
  vertex(240,-150);
  vertex(230,-100);
  vertex(230,-100);
  vertex(220,-150);
  vertex(220,-150);
  vertex(210,-100);
  vertex(210,-100);
  vertex(200,-150);
  vertex(200,-150);
  vertex(190,-100);
  vertex(190,-100);
  vertex(180,-150);
  vertex(180,-150);
  bezierVertex(180,-80,180,-60,200,-60);
  endShape();
  
  popMatrix();
  
  //Shape6: Math
  pushMatrix();
  strokeWeight(10);
  translate(g*5,g*4);
  scale(2);
  
  line(-50,-35,-20,-35);
  line(-35,-50,-35,-20);
  
  line(20,-35,50,-35);
  
  line(-20,35,-50,35);
  point(-35,20);
  point(-35,50);
  
  line(50,50,20,20);
  line(50,20,20,50);
  popMatrix();
  
  //Shape7:Swimming
  pushMatrix();
  strokeWeight(5);
  translate(g*1.5,g*4.5);
  beginShape();
  vertex(-50,0);
  bezierVertex(-40,-5,-35,-5,-25,0);
  bezierVertex(-15,5,-10,5,0,0);
  bezierVertex(10,-5,15,-5,25,0);
  bezierVertex(35,5,40,5,50,0);
  endShape();
  
  translate(0,-10);
  beginShape();
  vertex(-5,0);
  vertex(10,-5);
  vertex(5,-15);
  vertex(20,-20);
  endShape();
  ellipse(20,-5,5,5);
  popMatrix();
  
  //Shape8:Astronomy
  pushMatrix();
  strokeWeight(10);
  translate(g*3,g*5);
  fill(0,0,100);
  ellipse(0,0,40,40);
  ellipse(0,-125,20,20);
  ellipse(75,0,10,10);
  noFill();
  ellipse(0,0,100,100);
  ellipse(0,0,150,150);
  ellipse(0,0,250,250);
  popMatrix();
  
  /*pushMatrix();
  stroke(200);
  line(g*1,0,g*1,height);
  line(g*2,0,g*2,height);
  line(g*3,0,g*3,height);
  line(g*4,0,g*4,height);
  line(g*5,0,g*5,height);
  line(g*6,0,g*6,height);
  line(g*7,0,g*7,height);
  line(g*8,0,g*8,height);
  
  line(0,g*1,width,g*1);
  line(0,g*2,width,g*2);
  line(0,g*3,width,g*3);
  line(0,g*4,width,g*4);
  line(0,g*5,width,g*5);
  popMatrix();*/
  saveFrame("Myself.png");
}
