
int circleSize = 50;
float origColor = random(360);
void setup() {

  size(600,600);
  colorMode(HSB, 360, 100, 100,100);
  background(origColor, 50, 50);
  noStroke();
  translate(circleSize/2, circleSize/2);
  rectMode(CENTER);
  frameRate(30);
}
 void draw(){

background(0);

fill(random(360),80,100,random(50,100));

ellipse(random(width),random(height),40,40);

println(frameRate);


  
  for(int x =0; x<width; x+=circleSize){

    for(int y=0; y<height; y+=circleSize){
      fill(0);
     // fill(origColor, 40, 40);//
       ellipse(x,y,circleSize/2, 50);
  //fill((origColor+100) % 360, 70, 70);//
  rect(x, y, 40, circleSize/2);
  
  ellipse(x,y,50, circleSize/2);
     //fill(origColor, 80, 80);//
    
    rect(x,y,30, circleSize/2);

    }
}
}

