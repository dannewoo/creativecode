import processing.pdf.*; 
int maxCol = 9;
int maxRow = 20;
int maxLine1 = 2;
int maxLine2 = 1;
int pageMargin = 5;
float origColor = random(338);

void setup () {
  size(396, 612);
  beginRecord(PDF, "map3.pdf"); 
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 100);
  smooth();
  noStroke();
  
  float xSpacing = pageMargin * 8;
  float ySpacing = pageMargin * 6;
  for (int x = 0; x < maxCol; x++) {
    for (int y = 0; y < maxRow; y++) {
      pushMatrix();
      translate(x*xSpacing, y*ySpacing);
      if (x == 2) {
      fill(338, 56, 44);
      } else if (x == 6) {
      fill(352, 66, 79);
      } else if (x == 8) {
      fill(338, 56, 44);
      } else if (x == 6) {
      fill(338, 56, 44);
      } else if (x == 1) {
        fill(218, 67, 24);
      } else if (x == 4) {
        fill(218, 67, 24);
      } else if (x == 8) {
        fill(218, 67, 24);
      } else if (x == 4) {
        fill(352, 66, 79);
      } else if (y == 2) {
      fill(352, 66, 79);
      } else if (y == 7) {
      fill(338, 56, 44);
      } else if (y == 11) {
      fill(352, 66, 79);
      } else if (y == 15) {
      fill(338, 56, 44);
      } else if (y == 19) {
      fill(352, 66, 79);
      }  else {
          fill((origColor + 240) % 360, 100, 80, 80);
      }
          rect(pageMargin * 4, pageMargin * 2, pageMargin * 7, pageMargin * 4);
      popMatrix(); 
      
    }
  }
  
  float xLine = pageMargin * 8;
  float yLine = pageMargin * 6;
  for (int x = 0; x < maxLine1; x++) {
    for (int y = 0; y < maxLine2; y++) {
      strokeWeight(8);
      stroke(0, 0, 100);
      line(0, random(700), 600, random(700));
      line(600, random(700), 0, random(300));
    }
  }
  
  // roundabout 1
  
  fill(218, 67, 24);
  strokeWeight(8);
  stroke(0, 0, 100);
  ellipse(80, 250, 45, 45);
  strokeWeight(5);
  fill(352, 66, 79);
  stroke(0, 0, 100);
  ellipse(80, 250, 20, 20);
  line(80, 240, 120, 0);
  line(68, 250, 0, 250);
  line(80, 260, 100, 480);
  line(92, 250, 300, 240);
  /* line(195, 156, 200, 0);
  /* ellipse(80, 250, 45, 45); */
  
  
  // roundabout 2
  
  fill(218, 67, 24);
  strokeWeight(8);
  stroke(0, 0, 100);
  ellipse(150, 450, 120, 120);
  fill(352, 66, 79);
  ellipse(150, 450, 70, 70);
  line(170, 479, 600, 700);
  line(140, 484, 100, 700);
  line(145, 415, 100, 0);
  line(120, 430, 0, 370);
  line(185, 450, 612, 370);
  
  // roundabout 3
  
  fill(218, 67, 24);
  strokeWeight(8);
  stroke(0, 0, 100);
  ellipse(270, 250, 70, 70);
  fill(352, 66, 79);
  strokeWeight(6);
  ellipse(270, 250, 30, 30);
  line(270, 235, 320, 0);
  line(270, 265, 200, 700);
  line(285, 250, 612, 280);
  
  // river
  
  strokeWeight(60);
  stroke(0, 0, 100);
  line(0, 175, 100, 140);
  line(100, 140, 170, 120);
  line(170, 120, 250, 50);
  line(250, 50, 400, 0);
  
  strokeWeight(18);
  stroke(218, 67, 24);
  line(0, 175, 100, 140);
  line(100, 140, 170, 120);
  line(170, 120, 250, 50);
  line(250, 50, 400, 0);
  
  endRecord();
}
