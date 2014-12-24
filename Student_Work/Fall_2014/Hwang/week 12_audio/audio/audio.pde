import ddf.minim.*;

Bubble bub1, bub2, bub3;
AudioSample[] sample;
Minim main;


void setup(){
  size(600, 600);
  background(255);
  noStroke();
  
  bub1 = new Bubble(50, 70);
  bub2 = new Bubble(50, 100);
  bub3 = new Bubble(50, 40);
  
  main = new Minim(this);
  sample = new AudioSample[15];
  sample[0] = main.loadSample("01.mp3");
  sample[1] = main.loadSample("02.mp3");
  sample[2] = main.loadSample("03.mp3");
  sample[3] = main.loadSample("04.mp3");
  sample[4] = main.loadSample("05.mp3");
  sample[5] = main.loadSample("06.mp3");
  sample[6] = main.loadSample("07.mp3");
  sample[7] = main.loadSample("08.mp3");
  sample[8] = main.loadSample("09.mp3");
  sample[9] = main.loadSample("10.mp3");
  sample[10] = main.loadSample("11.mp3");
  sample[11] = main.loadSample("12.mp3");
  sample[12] = main.loadSample("13.mp3");
  sample[13] = main.loadSample("14.mp3");
  sample[14] = main.loadSample("15.mp3");
  
  fill(200);
  textSize(80);
  textAlign(CENTER);
}

void draw(){
  background(255);
  fill(0,0,50);
  bub1.enable();
  bub2.enable();
  bub3.enable();
  
  if (bub1.on() || bub2.on() || bub3.on()){
    text("POP!", width/2, height/2);
  }
}

void mouseReleased(){
  if(bub1.on() || bub2.on() || bub3.on()){
    sample[int(random(14))].trigger();
  }
}


class Bubble{
  float xPos, yPos, radius;
  float rightBorder, leftBorder, topBorder, bottomBorder;
  boolean pressed;
  int oncePer;
  Bubble(float _radius, int _oncePer){
    radius = _radius;
    xPos = random(width);
    yPos = random(height);
    pressed = false;
    oncePer = _oncePer;
  }
  
  void enable(){
    if (frameCount%oncePer == oncePer-1){
      pressed = false;
      xPos = random(width);
      yPos = random(height);
      leftBorder = xPos - radius;
      rightBorder = xPos + radius;
      topBorder = yPos - radius;
      bottomBorder = yPos + radius;
    }
    if (mouseX > leftBorder && mouseX < rightBorder && mouseY > topBorder && mouseY < bottomBorder){
      if (mousePressed){
        pressed = true;
      }
    }
    if (!pressed){
      ellipse(xPos, yPos, radius * 2, radius * 2);
    }
  }
  
  boolean on(){
    return pressed;
  }
}
