int unitSize = 50;
float baseColor = random(0,360);

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(700, 600);
  background(baseColor, 100, 40);
  
noStroke();

//hexagons
noFill();
stroke(baseColor + 180, 50, 100);
strokeWeight(15);

  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
    
      if (i < width && j < height) 
    fill(30, 10, 100);
      else noFill();      
      
      beginShape();
      for (int k = 0; k < 6; k++) vertex(unitSize+i*unitSize*4+sin(TWO_PI/6*k)*unitSize, unitSize+j*unitSize*2+cos(TWO_PI/6*k)*unitSize);
       endShape(CLOSE);
     
      beginShape();
      for (int k = 0; k < 6; k++) vertex(3*unitSize+i*unitSize*4+sin(TWO_PI/6*k)*unitSize, unitSize+j*unitSize*2+cos(TWO_PI/6*k)*unitSize);
      endShape(CLOSE);
      
   
 }}}

