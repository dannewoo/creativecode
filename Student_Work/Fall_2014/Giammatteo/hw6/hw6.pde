
int col = 15;
int row = 30;
int circle = 50;

void setup(){
  size(800, 750);
  frameRate(40);
  background(255);
  colorMode(HSB, 360, 100, 100, 100);
  noStroke();
}

void draw(){
  //frameRate(10);
    background(0);
    for(int x = 0; x <= width; x+=10){
    for(int y = 0; y <= height; y+=10){      
      if (x%2 == 0){
        noStroke();
        fill(random(250,289), random(250), random(100), 100); 
        triangle(x-5,y,x,y+10,x+5,y);
      }
     }
   }

}
