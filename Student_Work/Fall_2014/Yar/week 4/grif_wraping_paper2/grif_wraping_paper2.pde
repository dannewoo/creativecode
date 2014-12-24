 int mainw = 800;
  int mainh = 600;
   int xStep = 20; 
   int YStep = 80;
    int r1 = 10; 
    int r2 = 20; 
    int  r3 = 30;  
   
 void setup() { 
  size(mainw, mainh); 
   color white = color(255, 255, 255);
   color pink = color(255, 65, 182);
   color blue = color(0, 205, 255);
   color bg = color(91, 251, 72);
   colorMode(RGB, 255, 255, 255); 
   background(bg); 
  noFill(); 
  strokeWeight(6); 



    
   translate(0, 20); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
       float sd = random(r2); 
     stroke(pink);
     vertex(i, sd); 
   } 
   endShape(); 
    translate(0, 60); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(r3); 
          stroke(blue);
     vertex(i, sd); 
   } 
   endShape();    translate(0, r3); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(r2); 
          stroke(white);
     vertex(i, sd); 
   } 
   endShape();   
 
 

    translate(0, 60); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
       float sd = random(r3); 
     stroke(pink);
     vertex(i, sd); 
   } 
   endShape(); 
    translate(0, 20); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(r1); 
          stroke(blue);
     vertex(i, sd); 
   } 
   endShape();    translate(0, 20); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(5); 
          stroke(white);
     vertex(i, sd); 
   } 
   endShape();   
  
  
    translate(0, 20); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
       float sd = random(r1); 
     stroke(pink);
     vertex(i, sd); 
   } 
   endShape(); 
    translate(0, 60); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(r3); 
          stroke(blue);
     vertex(i, sd); 
   } 
   endShape();    translate(0, r3); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(r2); 
          stroke(white);
     vertex(i, sd); 
   } 
   endShape();   
 
 

    translate(0, 60); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
       float sd = random(r3); 
     stroke(pink);
     vertex(i, sd); 
   } 
   endShape(); 
    translate(0, 70); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(r1); 
          stroke(blue);
     vertex(i, sd); 
   } 
   endShape();    translate(0, 70); 
   beginShape(); 
   for(int i = 0; i < width; i += xStep) { 
     float sd = random(r3); 
          stroke(white);
     vertex(i, sd); 
   } 
   
   endShape();    
  



  
  


 }
