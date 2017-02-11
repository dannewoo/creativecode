import toxi.color.*;
import toxi.util.datatypes.*;

void setup() {
  size(600, 400);
  background(255);
  noStroke();

  // first set the colormode of the document
  colorMode(HSB, 1, 1, 1);
  
  // create a red color with values go from 0-1
  TColor redColor = TColor.newHSV(0, 1, 1);

  rectMode(CENTER);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(width/2, height/2, 130, 130);
}
