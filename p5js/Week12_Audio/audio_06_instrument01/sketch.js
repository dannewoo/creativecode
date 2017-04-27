var s01, s02, s03, s04, s05, s06, s07, s08, s09, s10;
var c;

function preload() {
  s01 = loadSound("audio/01.mp3");
  s02 = loadSound("audio/02.mp3");
  s03 = loadSound("audio/03.mp3");
  s04 = loadSound("audio/04.mp3");
  s05 = loadSound("audio/05.mp3");
  s06 = loadSound("audio/06.mp3");
  s07 = loadSound("audio/07.mp3");
  s08 = loadSound("audio/08.mp3");
  s09 = loadSound("audio/09.mp3");
  s10 = loadSound("audio/10.mp3");
}

function setup() {
  createCanvas(600, 400);
  colorMode(HSB, 360, 100, 100);
  c = 0;
  // Volume is a value between 0 and 1
  s01.setVolume(1);
  s02.setVolume(1);
  s03.setVolume(1);
  s04.setVolume(1);
  s05.setVolume(1);
  s06.setVolume(1);
  s07.setVolume(1);
  s08.setVolume(1);
  s09.setVolume(1);
  s10.setVolume(1);
}

function draw() {
  background(c, 80, 100);
}

function keyTyped() {
  if ( key == 'a' ) {
    c = 36; 
    s01.play();
  }
  if ( key == 's' ) {
    c = 36*2; 
    s02.play();
  }
  if ( key == 'd' ) {
    c = 36*3; 
    s03.play();
  }
  if ( key == 'f' ) {
    c = 36*4; 
    s04.play();
  }
  if ( key == 'g' ) {
    c = 36*5; 
    s05.play();
  }
  if ( key == 'h' ) {
    c = 36*6; 
    s06.play();
  }
  if ( key == 'j' ) {
    c = 36*7; 
    s07.play();
  }
  if ( key == 'k' ) {
    c = 36*8; 
    s08.play();
  }
  if ( key == 'l' ) {
    c = 36*9; 
    s09.play();
  }
  if ( key == ';' ) {
    c = 36*10; 
    s10.play();
  }
}