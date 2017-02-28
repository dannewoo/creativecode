var paragraph = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
var font;

function preload() {
  // To work with fonts you need to run a local server.
  // For instructions go here: https://github.com/processing/p5.js/wiki/Local-server
  font = loadFont("fonts/ShadowsIntoLight.ttf");
}

function setup() {
  createCanvas(600, 400);
  background(255);
  fill(0);
  textFont(font);
  textSize(21);
  textAlign(LEFT);
  textLeading(34);
  text(paragraph, 25, 25, width - 50, height - 50);
}