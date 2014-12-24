//core
int  mainw = 800;
int  mainh = 600;
// brushs
Boolean brush1 = true;
Boolean brush2 = false;
Boolean brush3 = false;
Boolean brush4 = false;
Boolean brush5 = false;
Boolean brush6 = false;
Boolean brush7 = false;
Boolean brush8 = false;
// sizrs
int bx = 20;
int by = 20;
int bw = 50;
int bh = 20;
//placement  
int by2 = by + bh + 10;
int by3 = by2 +  by + bh - 5 ;
int by4 = by3 +  by + bh - 5 ;
int by5 = by4 +  by + bh - 5 ;
int by6 = by5 +  by + bh - 5 ;
int by7 = by6 +  by + bh - 5 ;
int by8 = by7 +  by + bh - 5 ;
// coolors
color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
color yellow = color(247, 236, 31);
color teel= color(0, 168, 255);
color pink = color(255, 0, 249);
color black = color(0, 0, 0);
color white = color(255, 255, 255);
int op = 50;

void setup() {
  size(mainw , mainh);
  background(0);
  noStroke();
 colorMode(RGB, 255, 255, 255); 
}

void draw() {
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by) && (mouseY < by + bh) && mousePressed == true) {
    fill(red);  //button//
    brush1 = true;
    brush2 = false;
    brush3 = false;
    brush4 = false;
    brush5 = false;
    brush6 = false;
    brush7 = false;
    brush8 = false;
  } else {
    fill(120,0,0 );  // click //
  }
    rect(bx, by, bw, bh);
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by2) && (mouseY < by2 + bh) && mousePressed == true) {
   fill(green );
    brush1 = false;
    brush2 = true;
    brush3 = false;
    brush4 = false;
    brush5 = false;
    brush6 = false;
    brush7 = false;
    brush8 = false;
  } else {
    fill(0, 120, 0 );
  }
  rect(bx, by2, bw, bh);
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by3) && (mouseY < by3 + bh) && mousePressed == true) {
   fill(blue);
    brush1 = false;
    brush2 = false;
    brush3 = true;
    brush4 = false;
    brush5 = false;
    brush6 = false;
    brush7 = false;
    brush8 = false;
  } else {
    fill(0, 0, 120 );
  }
    rect(bx, by3, bw, bh);
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by4) && (mouseY < by4 + bh) && mousePressed == true) {
   fill(yellow);
    brush1 = false;
    brush2 = false;
    brush3 = false;
    brush4 = true;
    brush5 = false;
    brush6 = false;
    brush7 = false;
    brush8 = false;
  } else {
    fill(170, 162, 17 );
  } 
  rect(bx, by4, bw, bh);
  if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by5) && (mouseY < by5 + bh) && mousePressed == true) {
   fill(teel);
    brush1 = false;
    brush2 = false;
    brush3 = false;
    brush4 = false;
    brush5 = true;
    brush6 = false;
    brush7 = false;
    brush8 = false;
  } else {
    fill(5, 100, 149 );
  }
    rect(bx, by5, bw, bh);
    if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by6) && (mouseY < by6 + bh) && mousePressed == true) {
   fill(pink);
    brush1 = false;
    brush2 = false;
    brush3 = false;
    brush4 = false;
    brush5 = false;
    brush6 = true;
    brush7 = false;
    brush8 = false;
  } else {
    fill(148, 0, 146 );
  }
     rect(bx, by6, bw, bh);
    if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by7) && (mouseY < by7 + bh) && mousePressed == true) {
   fill(white);
    brush1 = false;
    brush2 = false;
    brush3 = false;
    brush4 = false;
    brush5 = false;
    brush6 = false;
    brush7 = true;
    brush8 = false;
  } else {
    fill(200, 200, 200 );
  }
  
    rect(bx, by7, bw, bh);
    if((mouseX > bx) && (mouseX < bx + bw) && (mouseY > by8) && (mouseY < by8 + bh) && mousePressed == true) {
   fill(white);
    brush1 = false;
    brush2 = false;
    brush3 = false;
    brush4 = false;
    brush5 = false;
    brush6 = false;
    brush7 = false;
    brush8 = true;
  } else {
    fill(40, 40, 40 );
  }
  
  rect(bx, by8, bw, bh);
  if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by) || (mouseY > by + bh)) && brush1 == true && mousePressed == true) {
    fill(red);
    ellipse(mouseX, mouseY, 20, 20);
  }
    if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by2) || (mouseY > by2 + bh)) && brush2 == true && mousePressed == true) {
    fill(green );
    ellipse(mouseX, mouseY, 20, 20);
  }

     if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by3) || (mouseY > by3 + bh)) && brush3 == true && mousePressed == true) {
    fill(blue );
    ellipse(mouseX, mouseY, 20, 20);
  }
    if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by4) || (mouseY > by4 + bh)) && brush4 == true && mousePressed == true) {
    fill(yellow );
    ellipse(mouseX, mouseY, 20, 20);
  }
    if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by5) || (mouseY > by5 + bh)) && brush5 == true && mousePressed == true) {
    fill(teel );
    ellipse(mouseX, mouseY, 20, 20);
  }
    if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by6) || (mouseY > by6 + bh)) && brush6 == true && mousePressed == true) {
    fill(pink);
    ellipse(mouseX, mouseY, 20, 20);
  }
      if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by7) || (mouseY > by7 + bh)) && brush7 == true && mousePressed == true) {
    fill(white);
    ellipse(mouseX, mouseY, 20, 20);
  }
      if(((mouseX < bx) || (mouseX > bx + bw) || (mouseY < by8) || (mouseY > by8 + bh)) && brush8 == true && mousePressed == true) {
    fill(black);
    ellipse(mouseX, mouseY, 20, 20);
  }
}
