int bookW = 70;
int bookH = 10;
int padding = 5;
int rectSize = 50;

void setup() {
  size(500, 500);
  background(255);
  rect(width/2, height/2, bookW, bookH);
  rect(width/2, height/2.1, bookW, bookH);
  rect(width/2, height/2.2, bookW, bookH);
  rect(width/2, height/2.3, bookW, bookH);
  rect(width/2, height/2.4, bookW, bookH);

fill(0);
  rect(rectSize/.25, rectSize/.25, rectSize/5, rectSize);
  pushMatrix();
  //translate(padding - rectSize/.25);
  rect(rectSize/1, rectSize/2, rectSize/10, rectSize);


}
