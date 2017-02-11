float c = 0;      
float cdir = 2;  

void setup() {
  size(600,400);
  background(0,0,0);
}

void draw() {
  background(c,0,255);
  c = c + cdir;
  if (c < 0 || c > 255) {
    cdir *= -1;
  }
}








