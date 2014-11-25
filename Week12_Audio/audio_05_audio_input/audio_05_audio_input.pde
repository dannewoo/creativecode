/*
This sketch demonstrates how to use your computers audio input.
*/

import ddf.minim.*;

Minim minim;
AudioInput in;

void setup() {
  size(600, 400, P3D);

  minim = new Minim(this);
  
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();
}

void draw() {
  background(0);
  stroke(255);
  
  // draw the waveforms so we can see what we are monitoring
  for(int i = 0; i < in.bufferSize() - 1; i++) {
    line( i, 100 + in.left.get(i)*50, i+1, 100 + in.left.get(i+1)*50 );
    line( i, 300 + in.right.get(i)*50, i+1, 300 + in.right.get(i+1)*50 );
  }
}
