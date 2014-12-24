int circleSize = 100;
float noiseVal;
float noiseScale=0.005;
String word1 = "POKER TOURNAMENT";

void setup() {
  size(550, 850);
  colorMode(HSB, 360, 100, 100);
  smooth();
  noStroke();


// loop through every pixel on the screen
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      noiseDetail(5, 0.5);
      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
      stroke(4, 100, noiseVal*50);
      point(x,y);
    }
  }

pushMatrix();
noStroke();
  translate(circleSize/4, circleSize/2);
  for(int x = 0; x < width; x += circleSize) {
    for(int y = 0; y < height; y += circleSize) {
      fill(116, 80, 30); //outside
      ellipse(x, y, circleSize * 1.2, circleSize * 1.2);
      fill(0); //middle
      ellipse(x, y, circleSize * 0.8, circleSize * 0.8);
    }
  }
  
popMatrix();
PFont font;
  font = loadFont("Rockwell-48.vlw");
  fill(255, 0, 100);
  textFont(font, 48);
  textAlign(CENTER);
  text(word1, width/2, 800);
  saveFrame("grab.jpg");
}
