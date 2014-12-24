import processing.pdf.*;
boolean savePDF = false;

float eyes = 30;
float shroomspots = 90;

void setup()
  {
  size (400,500, P2D);
  beginRecord(PDF, "toad.pdf");
  background(255);
  smooth();
  ellipseMode(CENTER);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  
  //shroom cap
  fill(0, 100, random(70,100));
  ellipse(200, 220, 250, 250);
  fill(29, 0, 100);
  ellipse(200, 315, 250, 200);
  
  //shroom cap spots
  fill(29, 0, 100);
    ellipse(200, 150, shroomspots, shroomspots);
    ellipse(85, 190, shroomspots/2, shroomspots);
    ellipse(310, 190, shroomspots/2, shroomspots);
 
  //face
  fill(29, 32, 99);
    ellipse(200, 300, 150, 100);
  fill(0, 0, 0);
    ellipse(182, 250, eyes, eyes);
    ellipse(218, 250, eyes, eyes);
 endRecord();
  }
  

