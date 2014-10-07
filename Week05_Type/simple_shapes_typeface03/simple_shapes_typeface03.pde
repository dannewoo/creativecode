int[][] letters = {
{ 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1 }, //A
{ 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0 }, //B
{ 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1 }  //C
};
int blockSize = 20;
void setup() {
  size(600, 400);
  noStroke();
  background(255);
  fill(0);
  // draw jumping letters
  translate(width/2 - ((blockSize * 5)*3)/2, height/2 - (blockSize * 6)/2);
  rectMode(CENTER);
  for(int i = 0; i < letters.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
    
     // for each letter, draw pixel dots
     for(int j = 0; j < letters[i].length; j++)
     {
        if(letters[i][j] == 1)
        {
          pushMatrix();
          translate(xPos, yPos);
          rotate(radians(random(-10, 10)));
          rect(0, 0, blockSize, blockSize);
          popMatrix();
        }
        
        xPos += blockSize;
        
        if(j % 4 == 3)
        {
          xPos = 0;
          yPos += blockSize; 
        }
     }
     
     translate(blockSize * 6, 0);
  }
}
