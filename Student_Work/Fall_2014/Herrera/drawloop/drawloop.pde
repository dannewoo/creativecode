String word1 = "//// Sisterhood of the ////";
String word2 = "\\\\ Traveling Pants \\\\";
int w = 150;
int h = 150;
int x = -w;
int speed = 2;

void setup() {
  rectMode(CORNER);
  size(600, 600);
  background(150);
   PFont font;
  font = loadFont("Baskerville-Bold-48.vlw");
  fill(255);
  textFont(font, 30);
  textAlign(CENTER);
  text(word1, width/2, 30); 
  text(word2, width/2, 580); 
}
  
   void draw() {
     println(frameRate);
     pushMatrix();
  x = x + speed;
  fill(255);
  noStroke();
  if (x > width) {
    x = -w;
  }
  fill(0, 0, 100);
  ellipse(x, height/2 - h/2, w, h);
  ellipse(x, height/3 - h/2, w, h);
  translate(0, 120);
  ellipse(x, height/2 - h/2, w, h);
  translate(0, 130);
  ellipse(x, height/2 - h/2, w, h);
  
  popMatrix();

  translate(150, 150);
  fill(0);
  rect(0, 0, 300, 200);
  
  stroke(0);
  strokeWeight(10);
  noFill();
  rect(100, -30, 100, 30);
  
  stroke(0);
  strokeWeight(3);
  fill(200);
  rect(30,0, 30, 200);
  
  stroke(0);
  strokeWeight(3);
  fill(200);
  rect(240,0, 30, 200);
  
  translate(200, 175);
  rotate(PI);
  pushMatrix();
  colorMode(HSB, 360, 100, 100, 100);
  fill(random(50, 110), 80, 100, 100);
  beginShape(); 
  vertex(50, 20); 
  vertex(100, 50); 
  vertex(100, 110); 
  vertex(0, 110); 
  vertex(0, 50); 
  vertex(50, 20); 
  endShape();
  popMatrix();
  
  pushMatrix();
  rotate(PI);
  translate(-100, -85);
  smooth();
noStroke();
fill(0);
beginShape();
vertex(50, 15); 
bezierVertex(50, -5, 90, 5, 50, 40); 
vertex(50, 15); 
bezierVertex(50, -5, 10, 5, 50, 40); 
endShape();
popMatrix();
  
  fill(0);
  stroke(0);
  strokeWeight(3);
  ellipse(6, 103, 5, 5);
  
  fill(0);
  stroke(0);
  strokeWeight(3);
  ellipse(93, 103, 5, 5);
  
 

  stroke(255);
  strokeWeight(3);
  fill(255);
  translate(-205, -131);
  beginShape(); 
  vertex(0, 0); 
  vertex(300, 0); 
  vertex(400, 100); 
  vertex(100, 100);  
  vertex(0, 0); 
  endShape();
  
  

}


