int opacity = 50;
int circleD = 250;
int circleQ = 150;

void setup() {
  size(displayWidth, displayHeight);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  frameRate(5);
}

void draw() {
 if(frameCount < 100){
fill(0, 100, 82, 90);
ellipse(random(width),random(height), 80, 80);

fill(39, 100, 100, 50);
ellipse(random(width), random(height), circleD, circleD);

fill(276, 0, 13, 90);
ellipse(random(width - 2) + circleQ/2, random(height - 2), circleQ, circleQ);
 }
println(frameCount);


}

