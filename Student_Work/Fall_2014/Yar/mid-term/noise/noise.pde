// core
float increment = 0.010;
int mainh = 800;
int mainw = 600;
int clonds = 198;

//colors 

color white = color(255, 255, 255);

//setup
void setup() {
  size(mainw, mainh, P2D); 
  noStroke();   
  colorMode(RGB, 255, 255, 255); 
  background(white); 

}
void draw() {
  
  loadPixels();

  float xoff = 0.0;
  float detail = map(height, 0.1, width, 0.1, 0.6);
  noiseDetail(8, detail);
  
  for (int x = 0; x < width; x++) {
    xoff += increment;   
    float yoff = 0.7;  
    for (int y = 0; y < height; y++) {
      yoff += increment; 
      
      float bright = noise(xoff, yoff) * clonds ;

     pixels[x+y*width] = color(bright, 10, 80 );
    }
  }
  
  updatePixels();
}


