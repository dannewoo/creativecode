import geomerative.*; 
float px, py, pw, ph;
void setup() {
    px = random(width/16, width-width/16);
  py = height-height/16;
  pw = width/12;
  ph = height/12;
size(1280, 400, P2D); 
background(0); 
char letterp = 'p';
char letterq = 'a';
char letterc = 'c';
char letterd = '-';
char letterm = 'm';
char lettera = 'a';
char lettern = 'n';
RG.init(this);
fill(255,255,0);
RFont font = new RFont("Chunkfive.ttf", 280, RFont.CENTER); 
RCommand.setSegmentLength(20);
RCommand.setSegmentator(RCommand.UNIFORMLENGTH); 

//Create each polygon letter
RPolygon polygon = font.toPolygon(letterp);
RPolygon polygonq = font.toPolygon(letterq);
RPolygon polygonc = font.toPolygon(letterc);
RPolygon polygond = font.toPolygon(letterd);
RPolygon polygonm = font.toPolygon(letterm);
RPolygon polygona = font.toPolygon(lettera);
RPolygon polygonn = font.toPolygon(lettern);

//Create letter P
translate(100, height/2+40);

for(int i = 0; i < polygon.contours.length; i ++) { RContour curContour = polygon.contours[i]; for(int j = 0; j < curContour.points.length; j++) {
RPoint curPoint = curContour.points[j];
ellipseMode(CENTER);
fill(232, 239, 40);
 noStroke();
 if(j==11 && i !=0){
beginShape();
ellipse(curPoint.x, curPoint.y,20,20); 
fill(0);
triangle(curPoint.x-2,curPoint.y,curPoint.x+10,curPoint.y-8,curPoint.x+10,curPoint.y+8);
  endShape();
 }else{
   ellipse(curPoint.x, curPoint.y,5,5); 
 }
}
}

//Create letter A
translate(180, height/2-135);
for(int i = 0; i < polygonq.contours.length; i ++) { RContour curContour = polygonq.contours[i]; for(int j = 0; j < curContour.points.length; j++) {
RPoint curPoint = curContour.points[j];
ellipseMode(CENTER);
fill(232, 239, 40);
 noStroke();
 if(j==5 && i !=1){
beginShape();
ellipse(curPoint.x, curPoint.y,20,20); 
fill(0);
triangle(curPoint.x-2,curPoint.y,curPoint.x+10,curPoint.y-8,curPoint.x+10,curPoint.y+8);
  endShape();
 }else{
   ellipse(curPoint.x, curPoint.y,5,5); 
 }
}
}
//Create letter C
translate(170, height/2-202);
for(int i = 0; i < polygonc.contours.length; i ++) { RContour curContour = polygonc.contours[i]; for(int j = 0; j < curContour.points.length; j++) {
RPoint curPoint = curContour.points[j];
ellipseMode(CENTER);
fill(232, 239, 40);
 noStroke();
 if(j==16 && i !=1){
beginShape();
ellipse(curPoint.x, curPoint.y,20,20); 
fill(0);
triangle(curPoint.x-2,curPoint.y,curPoint.x+10,curPoint.y-8,curPoint.x+10,curPoint.y+8);
  endShape();
 }else{
   ellipse(curPoint.x, curPoint.y,5,5); 
 }
}
}
//Create letter -
translate(120, height/2-202);
for(int i = 0; i < polygond.contours.length; i ++) { RContour curContour = polygond.contours[i]; for(int j = 0; j < curContour.points.length; j++) {
RPoint curPoint = curContour.points[j];
ellipseMode(CENTER);
fill(232, 239, 40);
 noStroke();
 if(j==9 && i !=1){
beginShape();
ellipse(curPoint.x, curPoint.y,20,20); 
fill(0);
triangle(curPoint.x-2,curPoint.y,curPoint.x+10,curPoint.y-8,curPoint.x+10,curPoint.y+8);
  endShape();
 }else{
   ellipse(curPoint.x, curPoint.y,5,5); 
 }
}
}
//Create letter M
translate(188, height/2-202);
for(int i = 0; i < polygonm.contours.length; i ++) { RContour curContour = polygonm.contours[i]; for(int j = 0; j < curContour.points.length; j++) {
RPoint curPoint = curContour.points[j];
ellipseMode(CENTER);
fill(232, 239, 40);
 noStroke();
 if(j==13 && i !=1){
beginShape();
ellipse(curPoint.x, curPoint.y,20,20); 
fill(0);
triangle(curPoint.x-2,curPoint.y,curPoint.x+10,curPoint.y-8,curPoint.x+10,curPoint.y+8);
  endShape();
 }else{
   ellipse(curPoint.x, curPoint.y,5,5); 
 }
}
}
//Create letter A
translate(215, height/2-202);
for(int i = 0; i < polygona.contours.length; i ++) { RContour curContour = polygona.contours[i]; for(int j = 0; j < curContour.points.length; j++) {
RPoint curPoint = curContour.points[j];
ellipseMode(CENTER);
fill(232, 239, 40);
 noStroke();
 if(j==21 && i !=1){
beginShape();
ellipse(curPoint.x, curPoint.y,20,20); 
fill(0);
triangle(curPoint.x-2,curPoint.y,curPoint.x+10,curPoint.y-8,curPoint.x+10,curPoint.y+8);
  endShape();
 }else{
   ellipse(curPoint.x, curPoint.y,5,5); 
 }
}
}
//Create letter N
translate(180, height/2-202);
for(int i = 0; i < polygonn.contours.length; i ++) { RContour curContour = polygonn.contours[i]; for(int j = 0; j < curContour.points.length; j++) {
RPoint curPoint = curContour.points[j];
ellipseMode(CENTER);
fill(232, 239, 40);
 noStroke();
 if(j==16 && i !=1){
beginShape();
ellipse(curPoint.x, curPoint.y,20,20); 
fill(0);
triangle(curPoint.x-2,curPoint.y,curPoint.x+10,curPoint.y-8,curPoint.x+10,curPoint.y+8);
  endShape();
 }else{
   ellipse(curPoint.x, curPoint.y,5,5); 
 }
}
}
}


  
 
    

