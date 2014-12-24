PImage img;
float inc = 0.0;
int move;
//color c = (random(0,230));

void setup() {
size(600, 600, P3D);
img = loadImage("Background.jpg");
cursor(CROSS);
frameRate(30);
move = 0;
}
void draw() {
background(img);
lights();
camera((width/2.0) + move, (height/2.0), (height/2.0) / tan(PI*30.0 / 180.0) - move, 
width/2.0, height/2.0, 0, 
0, 1, 0);
//    300, -150, 0); // Position
inc+=random(0,0.1);
move += 10;

pushMatrix();
translate(width/2,height/2);
rotateX(inc);
rotateY(inc);
sphere(60);
popMatrix();

pushMatrix();
translate(width/2 + 150,height/2 + 100);
rotateX(inc);
rotateY(inc);
box(30);
popMatrix();

pushMatrix();
translate(width/2 - 150,height/2 - 100);
rotateX(inc);
rotateY(inc);
box(130);
popMatrix();
}
void mousePressed() {
  noLoop();
stroke(random(0,10),random(0,130),0); 
fill(random(30,205),random(0,235),150,random(30,90));
}
void mouseReleased() {
  loop(); 
}
