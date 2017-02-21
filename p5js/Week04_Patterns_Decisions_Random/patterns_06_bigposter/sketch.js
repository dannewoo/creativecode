var keyW = 35;
var keyH = 110;
var blackKeyW = 28;
var blackKeyH = 50;
var padding = 2;
var keyBkgdH = keyH*1.5;
var blackKeySpacing = keyW*2 - blackKeyW;

function setup() {
  createCanvas(400, 600);
  background(150);
  noStroke();
  fill(0);
  rect(0, height/2 - keyBkgdH, width, keyBkgdH);
  
  //White Keys
  fill(255);
  for(var i = 0; i < 11; i++) {
    rect((keyW + padding)*i, height/2 - keyH, keyW, keyH);
  };
  
  //Black Keys
  fill(0);
  for(var i = 0; i < 11; i++) {
    rect(((blackKeySpacing + padding)/2) + (keyW + padding)*i, height/2 - keyH, blackKeyW, blackKeyH);
  };
  
  //Shoes
  fill(0);
  push();
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
  pop();

  push();
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
  pop();

}