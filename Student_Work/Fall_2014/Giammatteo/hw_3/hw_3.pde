int col = 12;
int row = 9;

void setup(){
 size(1000, 600);
 colorMode(HSB, 360, 100, 100);
 background(random(255));
 
 int xSpace = width/col;
 int ySpace = height/row;
 
 random(100);
 
 for(int x=0; x<col; x++){
  for(int y=0; y<row; y++){
   noStroke();     
   if (x % 2 == 1 && y % 2 == 0){
     pushMatrix();
     fill(177, 70, 100);
     ellipse(x*xSpace, y*ySpace, 50, 50);
     popMatrix();
    }
   else if (x % 2 == 0 && y % 2 == 1){
     pushMatrix();
     fill(177, 70, 100, 70);
     ellipse(x*xSpace, y*ySpace, 70, 70);
     popMatrix();
     
  
     }

   } 
  }
}
