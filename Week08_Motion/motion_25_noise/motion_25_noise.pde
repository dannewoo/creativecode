float xstart, ystart, xdirnoise, ydirnoise, speed;
// The higher the step value the faster the program
// will run, but you will get less detail
int step = 2;
 
void setup() {
  size(600, 400);
  noStroke();
  xstart = random(10);
  ystart = random(10);
  xdirnoise = random(10);
  ydirnoise = random(10);
  speed = 10; // speed of the wind
}
 
void draw() {
  float xnoise = xstart;
  float ynoise = ystart;
  // noisy directions
  float xdir = (noise(xdirnoise) - 0.5) * speed;
  float ydir = (noise(ydirnoise) - 0.5) * speed; 
  // stable directions
  // xdir = -1 * speed;
  // ydir = 0 * speed;
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
      //For RGB
      fill(nc, 0, 0);
      //For grayscale
      //fill(nc);
      rect(x, y, step, step);
    }
  }
  fill(255);
  textAlign(CENTER);
  textSize(75);
  text("Hello World", width/2, height/2);
}

