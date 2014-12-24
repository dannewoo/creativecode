int[][] letters = {
{ 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1 }, //s
{ 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0 }, //c
{ 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1 },  //a
{ 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0 }, //r
{ 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0 }  //y
};

void setup() {
  size(700, 500, P2D);
  colorMode(HSB, 360, 100, 100, 100);
  background(0, 0, 10);
fill(9, 90, random(50,80));
noStroke();



float blockSize = (15);

  // draw letters
  translate(width/2 - ((blockSize * 5)*6)/2, height/2 - (blockSize * 6)/2);
    
  
  for(int i = 0; i < letters.length; i++) {
     int xPos = 0, yPos = 0;
         float d = random(1.5);
    float e = random(1.5);
    // put ellipses at each point
     
     
     for(int j = 0; j < letters[i].length; j++) {
        if(letters[i][j] == 1) {
          ellipse(xPos, yPos, blockSize*d, blockSize*e);
        }
        xPos += blockSize;
        if(j % 5 == 4) {
          xPos = 0;
          yPos += blockSize; 
        }
     }
     translate(blockSize * 6, 0);
  
  }}
