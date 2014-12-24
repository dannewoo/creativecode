PImage img1, img2, img3, img4, img5, img6, img7, img8;
int x, y;
boolean hoverBoolean = true;

void setup() {
  size(600, 400);
  background(0);
  noStroke();
  img1 = loadImage("jigglypuff.png");
  img2 = loadImage("jynx.png");
  img3 = loadImage("snorlax.png");
  img4 = loadImage("lickitung.png");
  img5 = loadImage("justinbieber.png");
  img6 = loadImage("nickiminaj.png");
  img7 = loadImage("adele.png");
  img8 = loadImage("mileycyrus.png");
}

void draw() {
  image(img1, 20, height/2 - 100);
  image(img2, 120, height/2 - 100);
  image(img3, 20, height/2);
  image(img4, 120, height/2);
  rect(width/2, 0, width/2, height);
  
//jigglypuff and justinbieber
  if (mouseX >= 20 && mouseX <= 100 && mouseY >= (height/2 - 100) && mouseY <= (height/2 - 22)) {
    hoverBoolean = true;
  } else {
    hoverBoolean = false;
  }
  if (hoverBoolean == true) {
    image(img5, width/2, 50);
  } else if (hoverBoolean == false) {
  }
  
//jynx and nickiminaj
  if (mouseX >= 120 && mouseX <= 200 && mouseY >= (height/2 - 100) && mouseY <= (height/2 - 22)) {
    hoverBoolean = true;
  } else {
    hoverBoolean = false;
  }
  if (hoverBoolean == true) {
    image(img6, width/2, 50);
  } else if (hoverBoolean == false) {
  }
  
//snorlax and adele
  if (mouseX >= 20 && mouseX <= 100 && mouseY >= (height/2) && mouseY <= (height/2 + 64)) {
    hoverBoolean = true;
  } else {
    hoverBoolean = false;
  }
  if (hoverBoolean == true) {
    image(img7, width/2, 50);
  } else if (hoverBoolean == false) {
  }
  
//lickitung and mileycyrus
  if (mouseX >= 120 && mouseX <= 200 && mouseY >= (height/2) && mouseY <= (height/2 + 74)) {
    hoverBoolean = true;
  } else {
    hoverBoolean = false;
  }
  if (hoverBoolean == true) {
    image(img8, width/2, 50);
  } else if (hoverBoolean == false) {
  }
}
