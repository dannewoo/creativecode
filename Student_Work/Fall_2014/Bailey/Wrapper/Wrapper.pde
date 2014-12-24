int maxCol=5;
int maxRow=4;

void setup(){
  size(600,400);
  colorMode(HSB,360,100,100);
  background(random(360),100,100);
  
  
for (int a=0; a< width; a ++ ) {
  for(int t=0; t< height; t++){
  fill(180,20,250);
  noStroke();
  ellipse( a*150, t*50, 30,30);
  if ( a >= 2) {
    noStroke();
    ellipse( a*150, t*50, 40,40);
  } else { fill(30,215,250);
    }
    if ( a == 1 || a == 3) {
      noStroke();
      fill(250,248,197);
      ellipse( a*150, t*50, 50,50);
    } else { fill(145,41,91); }
    if ( a == 3 && t < 3) {
      noStroke();
      ellipse( a*150, 50, 50,50);
    } else { fill(48,82,99); }  
}
}
}
