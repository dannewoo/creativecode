Ball[] ball = new Ball[40];
float gravity = 0.1; 

void setup() { 
  size(600, 400); 
  noStroke();
  for (int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(random(0,width),random(0, height/2),random(50,150));
  }
} 

void draw() { 
  background(255); 
  for (int i = 0; i < ball.length; i++) {
    ball[i].display();
    ball[i].update();
  }
} 

class Ball {
  float x; 
  float y; 
  float speed; 
  float w;
  
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }

  void display() {
    fill(0, 50);
    ellipse(x,y,w,w); 
  }

  void update() {
    y = y + speed; 
    speed = speed + gravity; 
    if (y > height-w/2) { 
      speed = speed * -0.95; 
    } 
  }
}
