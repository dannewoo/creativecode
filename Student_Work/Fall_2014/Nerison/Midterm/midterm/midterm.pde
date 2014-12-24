
int baseColor = 10;

void setup()  {
  
  size(3264, 2112, P2D);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  noStroke();
  
PFont font;
font = loadFont("Georgia-BoldItalic-150.vlw");
  
Table data = loadTable("cc_midterm_words.csv");
String[] words = new String[data.getRowCount()];
         
 // Selecting a random word from the dataset (data.getRowCount is the max number)
int randomWord = round(random(data.getRowCount()));


 for(int i = 0; i < data.getRowCount(); i++) {
    words[i] = data.getRow(i).getString(0);
  }

// Loops through 100 times to draw 100 words
for(int i = 0; i < 100; i++) {  
  // Selects one random word from the dataset
  String w = words[randomWord];  
  textFont(font);
  textSize(random(100, 250));
  
    float colorz = round(random(10));
    if (colorz == 1) fill(random(0, 25), random(70, 100), 80);
    if (colorz == 2) fill(random(0, 25), random(50, 70), random(50, 100));
    if (colorz == 3) fill(random(0, 25), random(0, 100), random(0, 100));
    if (colorz == 5) fill(random(200, 250), random(50, 70), random(50, 100));
    if (colorz == 7) fill(random(150, 200), random(90, 100), random(100));
    if (colorz == 9) fill(random(125, 175), random(70, 100), random(100));
  else fill(random(250), random(100), random(100));
  
  float angle = round(random(7));
  pushMatrix();
   translate(random(500, 700), random(150, 500));
  //translate(random(-100, width), random(-100, height));
  if(angle == 1) rotate(radians(45));
  if(angle == 2) rotate(radians(90));
  if(angle == 3) rotate(radians(135));
  if(angle == 4) rotate(radians(180));
  if(angle == 5) rotate(radians(225));
  if(angle == 6) rotate(radians(270));
  if(angle == 7) rotate(radians(315)); 
  if(angle == 8) rotate(radians(360)); 
  
 text(w, 0, 0);
  popMatrix();
}
saveFrame("grab.jpg");
}


         
