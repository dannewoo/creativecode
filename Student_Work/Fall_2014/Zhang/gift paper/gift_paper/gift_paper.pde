int circleSize=30;

void setup(){
  size(600,400);
  ellipseMode(CORNER);
  translate(circleSize/2, circleSize/2);
  background(0);
  noStroke();
  rectMode(CENTER);
  

  for(int x =0; x<width; x+=circleSize){
    for(int y=0; y<height; y+=circleSize){
      fill(51,0,0);
      ellipse(x,y,circleSize, circleSize);
      fill(204, 153, 0);
      ellipse(x,y,circleSize,circleSize/3);
     fill(204, 102, 0);
      ellipse(x,y,circleSize/3,circleSize);
      fill(0);
      rect(x,y,circleSize/2, circleSize/2);
      fill(204, 153, 0);
      rect(x,y,circleSize/4,circleSize/4);
    }
  }
}
