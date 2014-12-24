
void setup (){
  size (390,600);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  noStroke();
  smooth();
  frameRate(10);
}


void draw(){
  for(int x = 0; x < 400; x +=15){
    for(int y = 0; y < 630; y +=30) {
    pushMatrix();
    translate(x, y);
    if(x % 2 == 1) {
      rotate(PI-.001);
    fill(random(360), random(44), random(300));
    } else {
      
    fill(random(360), random(50), random(300));
    }
    triangle(0, 0, -15, 30, 15, 30);
    popMatrix();
  }
 }
}
