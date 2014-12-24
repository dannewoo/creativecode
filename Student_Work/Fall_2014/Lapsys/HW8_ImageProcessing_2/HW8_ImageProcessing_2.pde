Button answer1, answer2, answer3, answer4;
PImage ans1, ans2, ans3, ans4;
int imageWidth = 600;
int imageHeight = 400;
float imagePosX, imagePosY;

void setup(){
  size(800,900);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  noStroke();
  
  ans1 = loadImage("cats.jpg");
  ans2 = loadImage("dogs.jpg");
  ans3 = loadImage("bunnies.jpg");
  ans4 = loadImage("satan.jpg");
  
  answer1 = new Button();
  answer2 = new Button();
  answer3 = new Button();
  answer4 = new Button();
  
  answer1.setSize(275, 50);
  answer2.setSize(275, 50);
  answer3.setSize(275, 50);
  answer4.setSize(275, 50);
  
  answer1.setTextSize(30);
  answer2.setTextSize(30);
  answer3.setTextSize(30);
  answer4.setTextSize(30);
  
  answer1.setText("I like cats!");
  answer2.setText("I like dogs!");
  answer3.setText("I like bunnies!");
  answer4.setText("I like satan!");
  
  answer1.setPosition(100, 675);
  answer2.setPosition(425, 675);
  answer3.setPosition(100, 750);
  answer4.setPosition(425, 750);
  
  answer1.setColor(200, 80, 100, 80);
  answer2.setColor(200, 80, 100, 80);
  answer3.setColor(200, 80, 100, 80);
  answer4.setColor(200, 80, 100, 80);
  
  imagePosX = width/2 - imageWidth/2;
  imagePosY = 100;
  
  frameRate(30);
}


void draw(){
  background(300);
  answer1.drawButton();
  answer2.drawButton();
  answer3.drawButton();
  answer4.drawButton();
  
  pushMatrix();
  translate(imagePosX + imageWidth/2, imagePosY + imageHeight/2);
  if(answer1.isPressed()){
    rotate(sin(radians(frameCount*15))/2);
    image(ans1, -imageWidth/2, -imageHeight/2, imageWidth, imageHeight);
  } else if(answer2.isPressed()){
    image(ans2, -imageWidth/2, -imageHeight/2, imageWidth, imageHeight);
  } else if(answer3.isPressed()){
    image(ans3, -imageWidth/2, -imageHeight/2, imageWidth, imageHeight+100);
    filter(THRESHOLD, random(1));
  } else if (answer4.isPressed()){
    image(ans4, -imageWidth/2 + random(-10,10), -imageHeight/2 + random(-10,10), imageWidth, imageHeight);
    filter(INVERT);
  }
  popMatrix();
  
  pushMatrix();
  translate(100, 825);
  fill(150);
  rect(0, 0, 600, 50);
  popMatrix();
  
  pushMatrix();
  translate(width/2, 850);
  fill(300);
  textAlign(CENTER, CENTER);
  if(answer1.isPressed()){
    text("MEOW?", 0, 0);
  } else if (answer2.isPressed()){
    text("Damn right you do! WOOF!", 0, 0);
  } else if (answer3.isPressed()){
    text("Are you sure?", 0, 0);
  } else if (answer4.isPressed()){
    text("That's what I'm talkin' about!", 0, 0);
  }
  popMatrix();
  
  pushMatrix();
  translate(width/2, 50);
  textAlign(CENTER, CENTER);
  textSize(10);
  fill(50, 50);
  text("I KNOW, THIS IS PRETTY DAMN STUPID. I DIDN'T HAVE TOO MANY IDEAS FOR A SHORT IMAGE PROCESSING BASED PROJECT", 0, 0);
  popMatrix();
}
