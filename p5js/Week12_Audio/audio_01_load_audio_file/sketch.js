var mySound;

function preload() {
  mySound = loadSound('audio/marcus_kellis_theme.mp3');
}

function setup() {
  createCanvas(600, 400);
  background(0);
  // Volume is a value between 0 and 1
  mySound.setVolume(1);
  mySound.play();
}

// On mousePressed restart audio
function mousePressed() {
  mySound.stop();
  mySound.play();
}