// core
int mainh = 800;
int mainw = 600;
int tick = 40;
int sbox = 50;
int bbox = 80;

//colors 

color white = color(255, 255, 255);
color borwn = color(59, 29, 0);
color gold = color(232, 202, 0);

//setup
void setup() {
  size(mainw, mainh, P2D); 
  noStroke();   
  colorMode(RGB, 255, 255, 255); 
  background(white); 

//borders
    fill(borwn);
    rect (mainw - sbox, mainw - sbox, sbox, sbox );
    rect (sbox / 2, sbox * 2 ,sbox, sbox * 2); 
    rect ( 0, 0, mainh, tick); 
    rect ( 0, mainh - tick , mainh, tick); 
    rect ( 0, 0, tick, mainh); 
    rect ( mainw - tick, 0, tick, mainh); 
    
    //boxes
    fill(gold);
        rect(mainw / 2/ 2, mainh / 2 / 2, bbox, bbox);
     rect(mainw / 2/ 2 + bbox / 2, mainh / 2 / 2 + bbox /2, bbox, bbox);
     rect(mainw / 2/ 2 + bbox , mainh / 2 / 2 + bbox, bbox, bbox);   
     rect(mainw / 2/ 2 + bbox + bbox / 2 , mainh / 2 / 2 + bbox + bbox / 2, bbox, bbox); 
     rect(mainw / 2/ 2 + bbox * 2 , mainh / 2 / 2 + bbox  * 2, bbox, bbox);
     rect(mainw / 2/ 2 + bbox * 2 + bbox / 2 , mainh / 2 / 2 + bbox  * 2 + bbox / 2, bbox, bbox);  
}



