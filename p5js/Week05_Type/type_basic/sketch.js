var word = "Hello world!";

function setup() {
  createCanvas(600, 400, P2D);
  background(255);
  fill(0);
  textSize(48);
  textAlign(CENTER);
  text(word, width/2, height/2 - 30);
  text(textWidth(word), width/2, height/2 + 30);
}