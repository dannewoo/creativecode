int keyW = 35;
int keyH = 110;
float blackKeyW = 28;
float blackKeyH = 50;
int padding = 2;
float keyBkgdH = keyH*1.5;
float blackKeySpacing = keyW*2 - blackKeyW;

void setup() {
  size(400, 600);
  background(150);
  noStroke();
  fill(0);
  rect(0, height/2 - keyBkgdH, width, keyBkgdH);
  
  //White Keys
  fill(255);
  rect(0, height/2 - keyH, keyW, keyH);
  rect(keyW + padding, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*2, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*3, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*4, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*5, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*6, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*7, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*8, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*9, height/2 - keyH, keyW, keyH);
  rect((keyW + padding)*10, height/2 - keyH, keyW, keyH);
  
  //Black Keys
  fill(0);
  rect((blackKeySpacing + padding)/2, height/2 - keyH, blackKeyW, blackKeyH);
  rect(((blackKeySpacing + padding)/2) + keyW + padding, height/2 - keyH, blackKeyW, blackKeyH);
  rect(((blackKeySpacing + padding)/2) + (keyW + padding)*3, height/2 - keyH, blackKeyW, blackKeyH);
  rect(((blackKeySpacing + padding)/2) + (keyW + padding)*4, height/2 - keyH, blackKeyW, blackKeyH);
  rect(((blackKeySpacing + padding)/2) + (keyW + padding)*5, height/2 - keyH, blackKeyW, blackKeyH);
  rect(((blackKeySpacing + padding)/2) + (keyW + padding)*7, height/2 - keyH, blackKeyW, blackKeyH);
  rect(((blackKeySpacing + padding)/2) + (keyW + padding)*8, height/2 - keyH, blackKeyW, blackKeyH);
  rect(((blackKeySpacing + padding)/2) + (keyW + padding)*10, height/2 - keyH, blackKeyW, blackKeyH);
  
  //Shoes
  fill(0);
  pushMatrix();
    translate(110 - 12, height/2 - 20);
    scale(0.2, 0.2);
    beginShape();
    vertex(0, -150);
    bezierVertex(25, -150, 40, -65, 40, -40);
    bezierVertex(40, -15, 25, 0, 0, 0);
    bezierVertex(-25, 0, -40, -15, -40, -40);
    bezierVertex(-40, -65, -25, -150, 0, -150);
    endShape();
    translate(0, 70);
    beginShape();
    vertex(0, -50);
    bezierVertex(25, -50, 30, -65, 30, -30);
    bezierVertex(30, -15, 25, 0, 0, 0);
    bezierVertex(-25, 0, -30, -15, -30, -30);
    bezierVertex(-30, -65, -25, -50, 0, -50);
    endShape();
  popMatrix();

  pushMatrix();
    translate(110 + 12, height/2 - 20);
    scale(0.2, 0.2);
    beginShape();
    vertex(0, -150);
    bezierVertex(25, -150, 40, -65, 40, -40);
    bezierVertex(40, -15, 25, 0, 0, 0);
    bezierVertex(-25, 0, -40, -15, -40, -40);
    bezierVertex(-40, -65, -25, -150, 0, -150);
    endShape();
    translate(0, 70);
    beginShape();
    vertex(0, -50);
    bezierVertex(25, -50, 30, -65, 30, -30);
    bezierVertex(30, -15, 25, 0, 0, 0);
    bezierVertex(-25, 0, -30, -15, -30, -30);
    bezierVertex(-30, -65, -25, -50, 0, -50);
    endShape();
  popMatrix();

}
