import processing.pdf.*;

int col = 15;
int row = 30;
int circle = 50;

void setup(){
  size(600, 750);
  beginRecord(PDF, "midterm.pdf");
  background(255);
  colorMode(HSB, 360, 100, 100, 100);
  
//squares
 for(int x = 0; x <= width; x+=30){
    for(int y = 0; y <= height; y+=30){
      if (x %2 == 0)
        noStroke();
        fill(333, random(80), random(50,100), 50); 
        rect(x,y,x+5,y+10);
   }
  }  

//top triangle
//  strokeWeight(60);
//  stroke(255, 25);
  fill(14, 100, 95, 40);
  triangle(0,0, width/2,height/2, width,0);
  
//side triangle
//  strokeWeight(60);
//  stroke(255, 15);
  fill(31, 100, 100, 40);
  triangle(width,0, width/2,height/2, width,height);
  
//side triangle
//  strokeWeight(60);
//  stroke(255, 25);j
  fill(289, 100, 50, 40);
  triangle(0,0, width/2,height/2, 0,height);
  
  
//bottom triangles
//  strokeWeight(60);
//  stroke(255, 25);
  noFill();
  //stroke(333, 0, 100, 70);
  //translate(width, height);
  triangle(0,height, width/2,height/2, width,height);
  
//triangles
  for(int x = 0; x <= width; x+=10){
    for(int y = 0; y <= height; y+=10){      
      if (x%2 == 0){
        noStroke();
        fill(random(250,289), random(100), random(100), 80); 
        triangle(x-5,y,x,y+10,x+5,y);
      }
     }
   }
endRecord();
}
