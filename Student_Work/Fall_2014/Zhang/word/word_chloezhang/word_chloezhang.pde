int[][] letters = {
{ 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0 }, //v
{ 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1 }, //a
{ 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1 }, //n
{ 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0 }, //i
{ 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1 }, //s
{ 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1 }, //h
};
int blockSize = 10;
void setup() {
size(600, 400);
noStroke();
background(255);
fill(0);

translate(width/2 - ((blockSize * 6)*3)/2, height/2 - (blockSize * 6)/2);
for(int i = 0; i < letters.length; i++) {
int xPos = 0, yPos = 0;
// for each letter, draw pixel dots
for(int j = 0; j < letters[i].length; j++) {
if(letters[i][j] == 1) {
float randomSize = random(1);
ellipse(xPos, yPos, blockSize * randomSize/2, blockSize * randomSize/2);
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
