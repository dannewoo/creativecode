var word = "Hello world!";
var font1, font2, font3;

function preload() {
  // Works with both TTF and OTF fonts
  // To run this on your machine locally you need to run a local server
  // otherwise you will get a XMLHttpRequest error.
  // For instructions go here: https://github.com/processing/p5.js/wiki/Local-server
  font1 = loadFont("fonts/BlackOpsOne-Regular.ttf");
  font2 = loadFont("fonts/Comfortaa-Light.ttf");
  font3 = loadFont("fonts/ShadowsIntoLight.ttf");
}

function setup() {
  createCanvas(600, 400);
  background(255);
  fill(0);
  textFont(font3, 100);
  textAlign(CENTER);
  text(word, width/2, height/2);
}