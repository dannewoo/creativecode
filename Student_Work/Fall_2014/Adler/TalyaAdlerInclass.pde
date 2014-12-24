
//void setup(){
  //size(600, 400);
  //colorMode(HSB, 360, 100, 100);
  //background(0);
  //shape1
  //stroke(255);
  //strokeWeight(2);
int circleD = 60;

void setup() {
  size(600, 400);
  stroke(255);
  noFill();
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 0);
  ellipseMode(CORNER);
  
  for (int x = 0; x < 6; x++) {
    if(x % 2 == 1 ){
      if(x == 2 || x == 4) translate(0,60);
//    if(x == 2 || x == 4 || x == 6 ){
      rect(x*80, 50, circleD, circleD);
    } 
       else {
      if(x == 2 || x == 4) translate(0,60);
      ellipse(x*80, 50, circleD, circleD);
    }
  }
}
  //for(int i=0; i < 6; i++) {
  //}   fill(255, 0, 0);
   // rect(i*50, height/2, 50, 50);
 // }
  
  //shape2
  //stroke(255)
  //shape3
   // stroke(255)
  //shape4
   // stroke(255)
  //shape5
    //stroke(255)
  //shape6
    //stroke(255)
  
  //for(int=0, i<10, 1++) {
    //println(random(100));
  

