//Attach the PDF processing library
import processing.pdf.*;

int rectSize = 130;
int origColor = 80;

void setup(){
  size(600, 400);
  //You need to tell when to start recording the PDF
  //Give it a file name with the extension .pdf
  beginRecord(PDF, "filename.pdf"); 
  rectMode(CENTER);
  background(255);
  colorMode(HSB, 360, 100, 100);

  noStroke();
  fill(origColor, 80, 80);
  rect(width/2 - rectSize/2, height/2, rectSize, rectSize);
  fill((origColor + 180) % 360, 80, 80);
  rect(width/2 + rectSize/2, height/2, rectSize, rectSize);
  
  //Tell the code when to stop recording the PDF
  endRecord();
  
}

