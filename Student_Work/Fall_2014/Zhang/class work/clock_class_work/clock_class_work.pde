void setup(){
  size (600,600);
  background(0);
  noStroke();
  rectMode(CENTER);
}
 void draw(){
   float h= map((hour()%12),0,12,0,360);
  float m = map(minute(), 0, 60, 0, 360);
  float s = map(second(), 0, 60, 0, 360);
  float c = map(second(), 0, 60, 100, 255);
  background(random(360), 100,random(100)); 
  fill(0, 100); 
  rect(width/2, height/2, 20, 20);
  rect(width/2, height/2, 600, 600);
  //Hours
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(h));
  rect(0, -100, 25, 150);
  popMatrix();
  //Minutes
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(m));
  rect(0, -80, 25, 150);
  popMatrix();
  //Seconds
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(s));
  pushMatrix();
  translate(0, -150);
  rect(0, -9, 10, 150);
  popMatrix();
  popMatrix();
}

