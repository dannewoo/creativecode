var osc, fft;

function setup(){
  createCanvas(600,400);
  osc = new p5.Oscillator();
  osc.start();
  fft = new p5.FFT();
}

function draw(){
  background(0);

  var modFreq = map(mouseX, 0, width, 20, 15000);
  var modAmp = map(mouseY, 0, height, 0, 1);
  osc.freq(modFreq);
  osc.amp(modAmp);

  var waveform = fft.waveform();
  stroke(255); // spectrum is green
  strokeWeight(1);
  noFill();
  beginShape();
  for (var i = 0; i< waveform.length; i++){
    var x = map(i, 0, waveform.length, 0, width);
    var y = map( waveform[i], -1, 1, 0, height);
    vertex(x,y);
  }
  endShape();
}