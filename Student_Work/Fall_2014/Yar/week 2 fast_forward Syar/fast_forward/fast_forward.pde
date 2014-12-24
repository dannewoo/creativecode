int ty1 = 50;
int ty2 = 300;
int ty3 = 550;

 void setup() { 
   size(600, 600); 
   background(255); 
    
 
   fill(0); 
   noStroke(); 
       // x1  y1  X2   Y2   x3   y3
triangle(301, ty1, 600, ty2, 301, ty3);
 
   fill(0); 
    
    rect(0,0 , 300, 600);
  
     fill(255); 
   noStroke(); 
       // x1  y1  X2   Y2   x3   y3
triangle(0, ty1, 300, ty2, 0, ty3);
 } 
