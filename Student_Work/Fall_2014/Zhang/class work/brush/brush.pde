

void setup() {
  size(600, 400);
  background(0);
  stroke(360,180,100,100);
}
void draw() {
  fill(0);
  if(mousePressed==true)
  {
  line(pmouseX, pmouseY, 40, 50);
 ellipse(pmouseX,pmouseY, 30,40);
   line(pmouseX,pmouseY, 30,40);

  }
}
