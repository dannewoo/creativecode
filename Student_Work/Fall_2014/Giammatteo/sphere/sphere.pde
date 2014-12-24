int col = 13;
int row = 6;

void setup() {
size(800, 800, P3D);
colorMode(HSB, 360, 100, 100);
background(0);

}
void draw() {
background(0);
noFill();
stroke(200, 35, 56);

  vertex(0, 0, 0);
  vertex(100, 100, 100);
  vertex(100, -100, 100);
  vertex(0, -100, 0);

//pushMatrix();
rotate(PI/6);
translate(0, -200, 0);
translate(mouseX, mouseY, -450);
for(int x = 100; x < 500; x+=100){
  stroke(50+x/2, 72, 99);
//sphere(x*1.75);
//sphere(x*2.75);
sphere(x*3);
sphere(x*4);
}
//popMatrix();

//pushMatrix();
//rotate(PI/4);
//translate(0, -50, 0);
//translate(mouseX,mouseY,-500);
//sphere(100);
//popMatrix();

}
