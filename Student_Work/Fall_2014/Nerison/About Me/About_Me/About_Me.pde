void setup() {
  size(700, 300);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
int baseColor = 5;
int rectSize = 100;
int glassesHeight = 130;
int innerFrame = 15;
int nBWidth = 30; 
background((baseColor + 180) % 360, 10, 100);

//rectange
fill(baseColor, 100, 100);
rectMode(CENTER);
rect(width/2 - 22, height/2 - 21, 505, 30);

//nosebridge
pushMatrix();
translate (0, 20);
ellipseMode(CENTER);
noFill();
stroke(baseColor, 100, 100);
strokeWeight(15);
ellipse(width/2 - 25, height/2 - 5, 75, 50);
//mask
noStroke();
fill((baseColor + 180) % 360, 10, 100);
beginShape();
vertex(width/2 + nBWidth - 2, height/2 + nBWidth*1.5);
vertex(width/2 + 2, height/2 - nBWidth*.5);
vertex(width/2 - nBWidth*1.65, height/2 - nBWidth*.5);
vertex(width/2 - nBWidth*2.4, height/2 + nBWidth*1.5);
endShape();
popMatrix();


//Left Frame
fill(baseColor, 100, 100);
pushMatrix();
translate(-85, 100);
//outer frame
beginShape();
vertex(width/2 - rectSize*1.4, height/2);
vertex(width/2, height/2);
vertex(width/2 + rectSize/2, height/2 - glassesHeight);
vertex(width/2 - rectSize*1.63, height/2 - glassesHeight);
endShape();
//inner frame
fill((baseColor + 180) % 360, 10, 100);
beginShape();
vertex((width/2 - rectSize*1.4) + innerFrame, height/2 - innerFrame);
vertex(width/2 - innerFrame, height/2 - innerFrame);
vertex((width/2 + rectSize/2) - innerFrame*1.5, (height/2 - glassesHeight) + innerFrame);
vertex((width/2 - rectSize*1.63) + innerFrame*1.5, (height/2 - glassesHeight) + innerFrame);
endShape(); 
//innercurve
fill(185, 10, 100);
shearX(PI/1.12);
rect(width/2-18, height/2-65, 130, 100, 20);
popMatrix();

/*
//Right Frame
fill(baseColor, 90, 100);
pushMatrix();
translate(100, 50);
rectMode(CENTER);
noFill();
stroke(baseColor, 100, 100);
strokeWeight(15);
rect(width/2, height/2, 180, 120, 20);
popMatrix();
*/


//Right Frame
fill(baseColor, 100, 100);
pushMatrix();
translate(185, 100);
//outer frame
beginShape();
vertex(width/2 - rectSize*1.4, height/2);
vertex(width/2, height/2);
vertex(width/2 + rectSize/6, height/2 - glassesHeight);
vertex(width/2 - rectSize*2, height/2 - glassesHeight);
endShape();
//inner frame
fill((baseColor + 180) % 360, 10, 100);
beginShape();
vertex((width/2 - rectSize*1.4) + innerFrame, height/2 - innerFrame);
vertex(width/2 - innerFrame, height/2 - innerFrame);
vertex((width/2 + rectSize/6) - innerFrame*1.5, (height/2 - glassesHeight) + innerFrame);
vertex((width/2 - rectSize*2) + innerFrame*1.5, (height/2 - glassesHeight) + innerFrame);
endShape(); 
//innercurve
rectMode(CENTER);
noFill();
stroke((baseColor + 180) % 360, 10, 100);
strokeWeight(13);
shearX(PI/7);
rect(width/2-140, height/2-62, 113, 91, 10);
popMatrix();

//top circle mask
ellipseMode(CENTER);
fill((baseColor + 180) % 360, 10, 100);
strokeWeight(5);
ellipse(width/2 - 25, height/2 - 50, 75, 50);

}
