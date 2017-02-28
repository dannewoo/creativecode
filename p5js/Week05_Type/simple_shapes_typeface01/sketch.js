var letters = [
  [ 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1 ], //A
  [ 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0 ], //B
  [ 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1 ]  //C
];
var blockSize = 20;

function setup() {
  createCanvas(600, 400);
  noStroke();
  background(255);
  fill(0);
  // draw letters
  translate(width/2 - ((blockSize * 6)*3)/2, height/2 - (blockSize * 6)/2);
  for(var i = 0; i < letters.length; i++) {
     var xPos = 0, yPos = 0;
     // for each letter, draw pixel dots
     for(var j = 0; j < letters[i].length; j++) {
        if(letters[i][j] == 1) {
          rect(xPos, yPos, blockSize, blockSize);
        }
        xPos += blockSize;
        if(j % 4 == 3) {
          xPos = 0;
          yPos += blockSize; 
        }
     }
     translate(blockSize * 6, 0);
  }
}