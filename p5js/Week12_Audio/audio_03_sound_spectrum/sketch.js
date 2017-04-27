var mySound, fft;

function preload() {
  mySound = loadSound('audio/marcus_kellis_theme.mp3');
}

function setup() {
  createCanvas(600, 400);
  background(0);
  // Create a new FFT analysis
  fft = new p5.FFT();
  mySound.setVolume(1);
  mySound.play();

  noStroke();
  fill(255);
}

function draw(){
  background(0);

  fft.analyze();
  var fftLin = fft.linAverages(5);
  for (var i = 0; i< fftLin.length; i++){
    var x = map(i, 0, fftLin.length, 0, width);
    var h = map(fftLin[i], 0, 255, height, 0) - height;
    rect(x, height, width / fftLin.length, h )
  }
}