void setup() {
  colorMode(HSB,360,100,100);
  background(186,23,100);
  size(400,600);
         
  
  //night sky Rect
  noStroke();
  fill(222,100,8);
  rect(0,0,400,300);
  
  //Moon
  fill(186,0,100);
  ellipse(50,245,75,75);
  
  //Sun
  fill(50,90,100);
  ellipse(350,350,75,75);
  
  
  //building night
  strokeWeight(2);
  fill(115,0,7);
  for(int x = 50; x<= 500; x += 50) {
    rect(x -50,0,46,random(100,250));
  }
  fill(115,0,3);
  rect(0,0,width,height/20);
  
  
  //triangle fan
  strokeWeight(2.0);
  stroke(0,0,87);
  fill(0,0,87);
  translate(100,300);
  beginShape();
  vertex(10, 20);
  vertex(75, 30);
  vertex(75, 50);
  vertex(90, 70);
  vertex(10, 20);
  endShape();
  
  
  //Building Day
  strokeWeight(2);
  stroke(27,0,27);
  fill(27,   0,27);
  rect(-100,280,width,height/10);
  fill(27,0,61);
  for(int x = -100; x<= 500; x += 50) {
  rect(x,280,46,random(-250,-100));
  }
  
  
}

  
 


