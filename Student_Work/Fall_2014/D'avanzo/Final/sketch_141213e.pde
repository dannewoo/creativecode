float xstart, ystart, xdirnoise, ydirnoise, speed;

int step = 2;
 
void setup() {
  size(650, 850);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  
  xstart = random(10);
  ystart = random(10);
  xdirnoise = random(10);
  ydirnoise = random(10);
  speed = 10;
}
 
void draw() {
  float xnoise = xstart;
  float ynoise = ystart;
  float xdir = (noise(xdirnoise) - 0.5) * speed;
  float ydir = (noise(ydirnoise) - 0.5) * speed; 
  xstart = xstart + xdir * 0.01;
  ystart = ystart + ydir * 0.01;
  xdirnoise = xdirnoise + 0.01;
  ydirnoise = ydirnoise + 0.01;
     
  for (int y = 0; y < height; y = y + step) { 
    ynoise += 0.01;
    xnoise = xstart;
    for (int x = 0; x < width; x = x + step) {
      xnoise += 0.01;
      float nc = noise(xnoise, ynoise) * 255;
      fill(nc);
      rect(x, y, step, step);
}
}
  //skin
    pushMatrix();  
    fill(31, 50, 100, 120);
    rect(0, 0, 650, 8500);
    popMatrix();
    
  //arrow
    pushMatrix();  
    fill(200, 49, 90, 120);
    translate(-110, 0);
    rect(width/2, 0, 200, 300);
    popMatrix();
    
    pushMatrix();  
    fill(200, 49, 90, 120);
    translate(420, 400);
    rotate(PI/1.0);
    triangle(100, -150, 300, 100, -90, 100);
    popMatrix();

  //eyes
    pushMatrix();
    fill(360, 300);
    translate(140, 600);
    ellipse(0, 0, 150, 80);
    popMatrix();
    
    pushMatrix();
    fill(360, 300);
    translate(500, 600);
    ellipse(0, 0, 150, 80);
    popMatrix();
}
