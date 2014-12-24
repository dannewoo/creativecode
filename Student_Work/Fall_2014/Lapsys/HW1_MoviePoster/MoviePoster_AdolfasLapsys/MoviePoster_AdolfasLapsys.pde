void setup(){
  size(800,1000);
  int w = width;
  int h = height;
  int wq = width/4;
  int hq = height/5;
  int wc = (width/4)*2;
  int hc = (height/5)*2;
  int rectX = 120;
  int rect2 = 110;
  int rect3 = 100;
  int rect4 = 90;
  int head = 22;
  int bgcolor = 100;
  int agclr = 32+16;
  int neoclr = 250;
  background(bgcolor);
  rectMode(CENTER);
  ellipseMode(CENTER);
  
//lines

  pushMatrix();
  strokeWeight(20);
  stroke(110);
  //vertical lines
  line (wq * 1, 0, wq * 1, h);
  line (wq * 2, 0, wq * 2, h);
  line (wq * 3, 0, wq * 3, h);
  //horizontal lines
  line (0, hq * 1, w, hq * 1);
  line (0, hq * 2, w, hq * 2);
  line (0, hq * 3, w, hq * 3);
  popMatrix();

  pushMatrix();
  strokeWeight(10);
  stroke(130);
  //vertical lines
  line (wq * 1, 0, wq * 1, h);
  line (wq * 2, 0, wq * 2, h);
  line (wq * 3, 0, wq * 3, h);
  //horizontal lines
  line (0, hq * 1, w, hq * 1);
  line (0, hq * 2, w, hq * 2);
  line (0, hq * 3, w, hq * 3);
  popMatrix();
  
  pushMatrix();
  strokeWeight(5);
  stroke(160);
  //vertical lines
  line (wq * 1, 0, wq * 1, h);
  line (wq * 2, 0, wq * 2, h);
  line (wq * 3, 0, wq * 3, h);
  //horizontal lines
  line (0, hq * 1, w, hq * 1);
  line (0, hq * 2, w, hq * 2);
  line (0, hq * 3, w, hq * 3);
  popMatrix();

  pushMatrix();
  strokeWeight(2.5);
  stroke(220);
  //vertical lines
  line (wq * 1, 0, wq * 1, h);
  line (wq * 2, 0, wq * 2, h);
  line (wq * 3, 0, wq * 3, h);
  //horizontal lines
  line (0, hq * 1, w, hq * 1);
  line (0, hq * 2, w, hq * 2);
  line (0, hq * 3, w, hq * 3);
  popMatrix();

//squares on intersections


  pushMatrix();
  noStroke();
  
  fill(bgcolor);
  ellipse(wq*3,hc,rect3+100,rect3+100);
  
  fill(220);
  ellipse(wq,hq,rectX,rectX);
  ellipse(wq*2,hq,rectX,rectX);
  ellipse(wq*3,hq,rectX,rectX);
  ellipse(wq,hq*2,rectX,rectX);
  ellipse(wq*2,hq*2,rectX,rectX);
  ellipse(wq,hq*3,rectX,rectX);
  ellipse(wq*2,hq*3,rectX,rectX);
  ellipse(wq*3,hq*3,rectX,rectX);
  
  fill(160);
  ellipse(wq,hq,rect2,rect2);
  ellipse(wq*2,hq,rect2,rect2);
  ellipse(wq*3,hq,rect2,rect2);
  ellipse(wq,hq*2,rect2,rect2);
  ellipse(wq*2,hq*2,rect2,rect2);
  ellipse(wq,hq*3,rect2,rect2);
  ellipse(wq*2,hq*3,rect2,rect2);
  ellipse(wq*3,hq*3,rect2,rect2);
  
  fill(130);
  ellipse(wq,hq,rect3,rect3);
  ellipse(wq*2,hq,rect3,rect3);
  ellipse(wq*3,hq,rect3,rect3);
  ellipse(wq,hq*2,rect3,rect3);
  ellipse(wq*2,hq*2,rect3,rect3);
  ellipse(wq,hq*3,rect3,rect3);
  ellipse(wq*2,hq*3,rect3,rect3);
  ellipse(wq*3,hq*3,rect3,rect3);
  
  fill(110);
  ellipse(wq,hq,rect4,rect4);
  ellipse(wq*2,hq,rect4,rect4);
  ellipse(wq*3,hq,rect4,rect4);
  ellipse(wq,hq*2,rect4,rect4);
  ellipse(wq*2,hq*2,rect4,rect4);
  ellipse(wq,hq*3,rect4,rect4);
  ellipse(wq*2,hq*3,rect4,rect4);
  ellipse(wq*3,hq*3,rect4,rect4);
  popMatrix();
  
//Neo Rule Bend

  pushMatrix();
  translate(wq*3,hc);
  rotate((-3*PI/45)+(0.06*PI));
  fill(105);
  rect(0,0,195,30);
  rect(0,0,30,195);
  popMatrix();

  pushMatrix();
  translate(wq*3,hc);
  rotate((-3*PI/45)+(0.045*PI));
  fill(110);
  rect(0,0,195,20);
  rect(0,0,20,195);
  popMatrix();
  
  pushMatrix();
  fill(bgcolor);
  ellipse(wq*3,hc,rectX,rectX);
  popMatrix();
  pushMatrix();
  translate(wq*3,hc);
  rotate((-3*PI/45)+(0.03*PI));
  fill(130);
  rect(0,0,195,10);
  rect(0,0,10,195);
  popMatrix();

  pushMatrix();
  translate(wq*3,hc);
  rotate((-3*PI/45)+(0.015*PI));
  fill(160);
  rect(0,0,195,5);
  rect(0,0,5,195);
  popMatrix();

  pushMatrix();
  translate(wq*3,hc);
  rotate(-3*PI/45);
  fill(220);
  rect(0,0,195,2.5);
  rect(0,0,2.5,195);
  popMatrix();
  
  pushMatrix();
  fill(bgcolor);
  ellipse(wq*3,hc,rectX,rectX);
  popMatrix();
  
//Agents

translate(0,7);
  pushMatrix();
  rectMode(CORNER);
  translate(wq*1,hq*1);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
/*  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
  
  pushMatrix();
  rectMode(CORNER);
  translate(wq*2,hq*1);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
/*  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
  
  pushMatrix();
  rectMode(CORNER);
  translate(wq*3,hq*1);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
/*  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
  
  
  pushMatrix();
  rectMode(CORNER);
  translate(wq*1,hq*2);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
  fill(64);
/*  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
  
  pushMatrix();
  rectMode(CORNER);
  translate(wq*2,hq*2);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
/*  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
  
  
  pushMatrix();
  rectMode(CORNER);
  translate(wq*1,hq*3);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
/*  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
  
  pushMatrix();
  rectMode(CORNER);
  translate(wq*2,hq*3);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
/*  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
  
  pushMatrix();
  rectMode(CORNER);
  translate(wq*3,hq*3);
  fill(agclr);
  noStroke();
  ellipse(0,-33,head,head);
/*  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);*/
  fill(agclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(agclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  



//Neo
  pushMatrix();
  rectMode(CORNER);
  translate(wq*3,hc);
  fill(neoclr);
  noStroke();
  ellipse(0,-33,head,head);
  fill(64);
  quad(-10,-38,0,-34,-2,-30,-9,-33);
  quad(10,-38,0,-34,2,-30,9,-33);
  fill(neoclr);
  rect(-10,-20,20,50,2);
  stroke(bgcolor);
  strokeWeight(2);
  line(0,10,0,30);
  strokeWeight(7);
  stroke(neoclr);
  line(10,-17,22,-10);
  line(-10,-17,-22,-10);
  popMatrix();
  
}
