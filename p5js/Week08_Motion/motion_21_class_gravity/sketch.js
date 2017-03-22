var ball = new Array(40);
var gravity = 0.1; 

function setup() { 
  createCanvas(600, 400); 
  noStroke();
  for (var i = 0; i < ball.length; i++) {
    ball[i] = new Ball(random(0,width),random(0, height/2),random(5),random(50,150));
  }
} 

function draw() { 
  background(255); 
  for (var i = 0; i < ball.length; i++) {
    ball[i].display();
    ball[i].update();
  }
} 

function Ball(x, y, speed, w) {
  this.display = function() {
    fill(0, 50);
    ellipse(x,y,w,w); 
  }

  this.update = function() {
    y = y + speed; 
    speed = speed + gravity; 
    if (y > height-w/2) { 
      speed = speed * -0.95; 
    } 
  }
}