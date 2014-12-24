import ddf.minim.*;
PImage bg, b1, b1p, b2, b2p, b3, b3p, b4, b4p, b5, b5p, b6, b6p;
int iW=144; int iH=28;
int numButtons=6;
boolean pressed1, pressed2, pressed3, pressed4, pressed5, pressed6 = false;
int songCount;

Minim minim;

AudioPlayer song1,song2,song3,song4,song5,song6,STM;

void setup(){
  size(913,430);
  
  minim=new Minim(this);
  bg=loadImage("bg.jpg");
  b1=loadImage("01.png"); b1p=loadImage("01_.png");
  b2=loadImage("02.png"); b2p=loadImage("02_.png");
//  b3=loadImage("03.png"); b3p=loadImage("03_.png");
  b4=loadImage("04.jpg"); b4p=loadImage("04_.jpg");
  b5=loadImage("05.jpg"); b5p=loadImage("05_.jpg");
  b6=loadImage("06.jpg"); b6p=loadImage("06_.jpg");
  
  song1=minim.loadFile("Atmosphere - Get Depressed (Get Down).mp3");
  song2=minim.loadFile("Bop Alloy ft. Cise Starr of CYNE - Step Into The Cypher.mp3");
//  song3=minim.loadFile("Andy McKee - Drifting.mp3");
  song4=minim.loadFile("JackLNDN - Dont Forget.mp3");
  song5=minim.loadFile("Electropop - Jupiter Rising.mp3");
  song6=minim.loadFile("The Glitch Mob - Fly By Night Only.mp3");
  STM=minim.loadFile("STOP TOUCHING ME.mp3");
}

void draw(){
  image(bg,0,0);
  
  // displays all buttons (not pressed)
  image(b1,20,50);
  image(b2,200,50);
//  image(b3,420,186);
  image(b4,44,236);
  image(b5,232,236);
  image(b6,420,236);

  // checks if button is pressed
  if(pressed1==true){
    image(b1p,20,50);
  }
  
  if(pressed2==true){
    image(b2p,200,50);
  }
  
//  if(pressed3==true){
//    image(b3p,420,186);
//  }
  
  if(pressed4==true){
    image(b4p,44,236);
  }
  
  if(pressed5==true){
    image(b5p,232,236);
  }
  
  if(pressed6==true){
    image(b6p,420,236);
  }
  
  if(songCount%3==0 && songCount>0){
    STM.loop(0);
    songCount=0;
  }
}

void mousePressed() {
  
  if (mouseX > 20 && mouseX < 20+iW
  && mouseY > 50 && mouseY < 50+iH) {
    song1.loop(0);
    image(b1p,20,50);
    pressed1=true;
    songCount++;
  }
  
  if (mouseX > 200 && mouseX < 200+iW
  && mouseY > 50 && mouseY < 50+iH) {
    song2.loop(0);
    image(b2p,200,50);
    pressed2=true;
    songCount++;
  }
  
//  if (mouseX > 420 && mouseX < 420+iW
//  && mouseY > 186 && mouseY < 186+iH) {
//    song3.loop(0);
//    image(b3p,420,186);
//    pressed3=true;
//    songCount++;
//  }

  if (mouseX > 56 && mouseX < 56+iW
  && mouseY > 236 && mouseY < 236+iH) {
    song4.loop(0);
    image(b4p,44,236);
    pressed4=true;
    songCount++;
  }
  
  if (mouseX > 232 && mouseX < 232+iW
  && mouseY > 236 && mouseY < 236+iH) {
    song5.loop(0);
    image(b5p,232,236);
    pressed5=true;
    songCount++;
  }
  
  if (mouseX > 420 && mouseX < 420+iW
  && mouseY > 236 && mouseY < 236+iH) {
    song6.loop(0);
    image(b6p,420,236);
    pressed6=true;
    songCount++;
  }
}

void mouseReleased(){
  
  // resets all button to unpressed state
  image(b1,20,50);
  image(b2,200,50);
//  image(b3,420,186);
  image(b4,44,236);
  image(b5,232,236);
  image(b6,420,236);
  
  pressed1=false;
  pressed2=false;
//  pressed3=false;
  pressed4=false;
  pressed5=false;
  pressed6=false;
}

void keyPressed() {
 if (key == 'p' || key == 'P') {
   song1.pause();
   song2.pause();
   song4.pause();
   song5.pause();
   song6.pause();
  
 if (key == 'x' || key =='X') {
   STM.play();
   
  }
 }
}

// if (key == 'w' || key == 'W') {
//   song2.pause();   
// }
// 
//} if (key == 'e' || key == 'E') {
//   song4.pause();   
// }
// 
//} if (key == 'r' || key == 'R') {
//   song5.pause();   
// }
// 
//} if (key == 't' || key == 'T') {
//   song6.pause();   
// }
//}

// necessary to successfully use Minim
void stop(){
  song1.close();
  song2.close();
//  song3.close();
  song4.close();
  song5.close();
  song6.close();
  STM.close();
  minim.stop();
  super.stop();
}
