void setup() {
 size(600, 400);
 background(0, 20, 100);
 
 translate(60, 70);
 for(int i = 0; i < 20; i++) {
  for(int j = 0; j < 20; j++) {
    fill(110, 0, 0);
    triangle(10 + i*10, 60 + i*10, 10 + i*10, 20 + i*10, 80 + i*10, 75 + i*10); 

  }
 }
}
