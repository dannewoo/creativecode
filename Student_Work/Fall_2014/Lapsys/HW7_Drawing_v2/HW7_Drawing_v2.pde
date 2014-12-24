int resolution = 30;
PVector[] shapePoints = new PVector[resolution];
float radius = 40;
float angle;
float rotationSpeed = 5;
float colorHue = 1;
float lineLength = 50;
float marginX, marginY;


void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  
  marginX = width/8;
  marginY = height/8;
}

void draw() {
  
  //Drawing algorithm
  angle = radians(frameCount%360);
  if (mousePressed){
    pushMatrix();
    translate(mouseX, mouseY);
    rotate(angle * rotationSpeed);
    strokeWeight(3);
    stroke(colorHue, 60, 100);
    line(0, -lineLength, 0, lineLength);
    popMatrix();
  }
  
  //Bounds
  pushMatrix();
  noStroke();
  fill(0, 0, 20);
  rect(0, 0, marginX, height);
  rect(marginX, 0, width - (2 * marginX), marginY);
  rect(marginX, height - marginY, width - (2 * marginX), marginY);
  rect(width - marginX, 0, marginX, height);
  popMatrix();
  
  
  //Frame
  pushMatrix();
  noFill();
  strokeWeight(4);
  stroke(0, 0, 50);
  rect(marginX - 2, marginY - 2, width - (marginX * 2) + 2, height - (marginY * 2) + 2);
  popMatrix();
  
  
  //////Buttons
  //Color
  pushMatrix();
  noStroke();
  fill(colorHue, 60, 100);
  rect(50, 75, 125, 50);
  popMatrix();
  //Minus
  pushMatrix();
  noStroke();
  if(mousePressed == true && mouseX >= 50 && mouseX <= 100 && mouseY >= 150 && mouseY <= 200){
    fill(0, 0, 100);
    colorHue -= 5;
  } else if (mousePressed == false && mouseX >= 50 && mouseX <= 100 && mouseY >= 150 && mouseY <= 200) {
    fill(0, 0, 80);
  } else {
    fill(0, 0, 50);
  }
  rect(50, 150, 50, 50);
  stroke(5);
  line(60, 175, 90, 175);
  popMatrix();
  
  //Plus
  pushMatrix();
  noStroke();
  if(mousePressed == true && mouseX >= 125 && mouseX <= 175 && mouseY >= 150 && mouseY <= 200){
    fill(0, 0, 100);
    colorHue += 5;
  } else if (mousePressed == false && mouseX >= 125 && mouseX <= 175 && mouseY >= 150 && mouseY <= 200) {
    fill(0, 0, 80);
  } else {
    fill(0, 0, 50);
  }
  rect(125, 150, 50, 50);
  stroke(5);
  line(135, 175, 165, 175);
  line(150, 160, 150, 190);
  popMatrix();
  
  
}

void keyPressed() {
  if (key == '1' && colorHue <= 360){
    colorHue += 10;
  }
  if (key == '2' && colorHue >= 0){
    colorHue -= 10;
  }
  if (key == '0' && lineLength <= 200){
    lineLength += 20;
  }
  if (key == '9' && lineLength > 0){
    lineLength -= 20;
  }
  if (key == 's'){
    save("coolImage.png");
  }
}
