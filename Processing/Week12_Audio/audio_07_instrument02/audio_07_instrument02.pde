import ddf.minim.*;

Circle[] circle = new Circle[1];
Minim minim;
AudioSample sample01, sample02, sample03, sample04, sample05, 
sample06, sample07, sample08, sample09, sample10;

void setup() {
  background(0);
  size(displayWidth, displayHeight);
  ellipseMode(RADIUS);
  minim = new Minim(this);
  sample01 = minim.loadSample("sample01.mp3");
  sample02 = minim.loadSample("sample02.mp3");
  sample03 = minim.loadSample("sample03.mp3");
  sample04 = minim.loadSample("sample04.mp3");
  sample05 = minim.loadSample("sample05.mp3");
  sample06 = minim.loadSample("sample06.mp3");
  sample07 = minim.loadSample("sample07.mp3");
  sample08 = minim.loadSample("sample08.mp3");
  sample09 = minim.loadSample("sample09.mp3");
  sample10 = minim.loadSample("sample10.mp3");
  circle[0] = new Circle(300, random(height), 20, color(random(255), random(255), random(255)), 0, 15);
//  circle[0] = new Circle(300, random(height), random(30), color(random(255), random(255), random(255)), random(-2, 5), random(-2, 5));
}

void draw() {
  noStroke();
  fill(0, 20);
  rect(0, 0, width, height);
  for (int i = 0; i < circle.length; i++ ) {
    circle[i].drawCircle();
    circle[i].moveCircle();
  }
  stroke(130, 40, 200);
  strokeWeight(1);
  for(int i = 1; i < 10; i++) {
    line(width/10 * i, (height/2) - 10, width/10 * i, (height/2) + 10);
  }
  line(0, height/2, width, height/2);
}

void mousePressed() {
  // A new ball object
  Circle c = new Circle(mouseX, mouseY, 20, color(random(255), random(255), random(255)), 0, 15);
//  Circle c = new Circle(mouseX, mouseY, random(30), color(random(255), random(255), random(255)), random(-2, 5), random(-2, 5));
  circle = (Circle[]) append(circle, c);
}
