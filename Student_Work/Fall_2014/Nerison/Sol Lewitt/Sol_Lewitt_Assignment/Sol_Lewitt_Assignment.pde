void setup() {
  colorMode(HSB, 360, 100, 100, 100);
  size(600, 400);
  background(100, 0, 0);  

noFill();
stroke(5, 0, 100);
strokeWeight(random(20));

//circles
for(int i=0; i<6; i++) {
 pushMatrix();
 translate(100, 100);
    ellipse(i*width/8 - random(20), i*height/12 + random(10), random(120, 150), random(100, 150));
    popMatrix();
 }
 } 

