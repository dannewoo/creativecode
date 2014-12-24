PImage toaster;
PImage toast;

String word = "FLOOR TOAST!";
int d = 150;
int bounceY = d/2;
int speed = 7;

void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 600);
  background(255);
  toaster = loadImage("red_toaster.jpg");
  toast = loadImage("toast.png");

  }

void draw() {
background(255, 0, 100);
fill(0, 0, 0);
rect(0, 400, width, 1);
imageMode(CENTER);
int x = mouseX;
int y = mouseY;

bounceY = bounceY + speed;
    if ((bounceY > height - d) || (bounceY < d/4)) {
    speed = speed * -1;   
  } 
  if(y >= 400) {
  image(toast, x, y - bounceY, 150, 150);  
  fill(random(360), 90, 95);
  textSize(48);
  textAlign(CENTER);
  text(word, x, 100);
}
// if(keyPressed) {
//  pushMatrix();
//  rotate(TWO_PI);
//  image(toast, x, y - bounceY, 150, 150);  
// popMatrix();
//}


else {
image(toast, x, y, 150, 150);
}
image(toaster, x, y, 290, 200); 
}

