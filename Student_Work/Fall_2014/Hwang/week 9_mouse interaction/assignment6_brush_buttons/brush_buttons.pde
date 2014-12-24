int count = 1;
color btn1, btn2;
boolean mode1, mode2;

float color1 = random(360);
float color2 = random(100);
float color3 = random(100);

void setup(){
  size (800, 800);
  colorMode(HSB, 360, 100, 100, 100);
  background(10, 100, 0);
  mode1 = true;
}


void draw(){
  //Conditions for the buttons
  btn1 = color(150);
  btn2 = color(150);
  if (mouseX > 20 && mouseX < 80 && mouseY > 20 && mouseY < 40){
    btn1 = color(200);
    if (mousePressed){
      background(0);
      mode1 = true;
      mode2 = false;
      btn1 = color(360);
    }
  } else if (mouseX > 20 && mouseX < 80 && mouseY > 50 && mouseY < 70){
    btn2 = color(200);
    if (mousePressed){
      background(360);
      mode1 = false;
      mode2 = true;
      btn2 = color(360);
    }
  }
  //Draw the buttons
  pushMatrix();
  noStroke();
  fill(btn1);
  rect(20, 20, 60, 20);
  popMatrix();
  pushMatrix();
  noStroke();
  fill(btn2);
  rect(20, 50, 60, 20);
  popMatrix();
  
  //Button1 brush
  if (mode1 == true && mousePressed && (mouseX > 110 || mouseY > 100)){
    for ( int i=0; i<30; i++){
      strokeWeight(1);
      fill(360); 
      ellipse(mouseX, mouseY, 25, 25);
      stroke(0);
      line(mouseX+random(10), mouseY+random(10), pmouseX+random(10), pmouseY+random(10));
    }
  } else if (mode2 == true && mousePressed && (mouseX > 110 || mouseY > 100)){
    stroke(#FFFFFF, 8);
    fill (color1, color2, color3, 8);
    ellipse(mouseX, mouseY, 130, 130);
    fill (color1,color2,color3, 8);
    ellipse(mouseX,mouseY, 130, 130);
  }
  
  //Keypressed actions
  if (keyPressed == true){
    if (key != 's'){
      color1 = random(255);
      color2 = random(255);
      color3 = random(255);
    } else {

      save("frame" + count + ".png");
      delay(500);
      count++;
    }
  }
}

