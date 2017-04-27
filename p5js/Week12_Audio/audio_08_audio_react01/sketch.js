var song, fft, fftLin;
var spectrumScale = 1;
var linNum = 40;
var r = 0;
var x = [];
var y = [];

function preload() {
  song = loadSound("audio/father_john_misty.mp3");
}

function setup() {
  createCanvas(600, 400);
  background(0);
  noStroke();
  fft = new p5.FFT();
  song.setVolume(1);
  song.loop();
  fft.analyze();
  fftLin = fft.linAverages(linNum);
  for (var i = 0; i< fftLin.length; i++){
    if(i == 0) {
      x[i] = 0;
      y[i] = 0;
    } else {
      x[i] = random(-width/2, width/2);
      y[i] = random(-height/2, height/2);
    }
  }
}

function draw() {
  fft.analyze();
  fftLin = fft.linAverages(linNum);
  noStroke();
  fill(0, 0, 0, 20);
  rect(0, 0, width, height);
  translate(width/2, height/2);
  rotate(radians(r));
  for(var i = 0; i < fftLin.length; i++){
    strokeWeight(3);
    if(i % 2 == 1) {
      stroke(255);
    } else {
      stroke(255, 0, 0);
    }
    if(i == 0) {
      fill(255, 0, 0);
      ellipse(x[i], y[i], fftLin[i]*spectrumScale*2, fftLin[i]*spectrumScale*2);
    } else {
      noFill();
      ellipse(x[i], y[i], fftLin[i]*spectrumScale, fftLin[i]*spectrumScale);
    }
  }
  r += 0.3;
}