void setup(){
 size(600, 800);
 background(200);
 
 int x = width/2;
 int y = height/2;
 int diam = 300;
 
//stone 
  ellipseMode(CENTER);
  noFill();
  stroke(250);
  strokeWeight(10);
  ellipse(x, y, 285, 285);
  
//wand
  line(x, x-200, x, diam+250);

//cape
  triangle(x, x-200, x+250, diam+250, x-250, diam+250);

//scar
  stroke(100);
  strokeWeight(4);
  fill(100);
  shapeMode(CENTER);
  beginShape();
    vertex(250, 250);
    vertex(400, 475);
    vertex(275, 450);
    vertex(400, 655);
    vertex(245, 430);
    vertex(370, 450);
   vertex(250, 250);
   endShape();
   
 //overlaps
  strokeWeight(10);
  stroke(250);
  line(x, x-200, x, y);
  line(x,475,x, diam+250);
}
