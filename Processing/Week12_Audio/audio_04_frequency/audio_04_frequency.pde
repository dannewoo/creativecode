/* 
A simple example for doing FM (frequency modulation) using two Oscils. 
We need to load the UGen (Unit Generator) class from the minim library below.
This allows us to create different frequencies and amplitudes.
*/

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
// For realtime sound synthesis we need to use the AudioOutput class
AudioOutput out;

// The Oscil we use for modulating frequency.
Oscil fm;

void setup() {
  size(600, 400, P3D);

  // Initialize the minim and out objects
  minim = new Minim( this );
  out = minim.getLineOut();
  
  // Make the Oscil we will hear.
  // Arguments are frequency, amplitude, and waveform
  Oscil wave = new Oscil( 200, 0.8, Waves.SINE );
  // Make the Oscil we will use to modulate the frequency of wave.
  // The frequency of this Oscil will determine how quickly the
  // frequency of wave changes and the amplitude determines how much.
  // Since we are using the output of fm directly to set the frequency 
  // of wave, you can think of the amplitude as being expressed in Hz.
  fm = new Oscil( 10, 2, Waves.SINE );
  // Set the offset of fm so that it generates values centered around 200 Hz
  fm.offset.setLastValue( 200 );
  // Patch it to the frequency of wave so it controls it
  fm.patch( wave.frequency );
  // and patch wave to the output.
  wave.patch( out );
}

void draw() {
  background( 0 );
  stroke( 255 );
  // draw the waveforms
  for( int i = 0; i < out.bufferSize() - 1; i++ ) {
    // find the x position of each buffer value
    float x1  =  map( i, 0, out.bufferSize(), 0, width );
    float x2  =  map( i+1, 0, out.bufferSize(), 0, width );
    // draw a line from one buffer position to the next for both channels
    line( x1, 100 + out.left.get(i)*50, x2, 100 + out.left.get(i+1)*50);
    line( x1, 300 + out.right.get(i)*50, x2, 300 + out.right.get(i+1)*50);
  }  
  
  text( "Modulation frequency: " + fm.frequency.getLastValue(), 5, 15 );
  text( "Modulation amplitude: " + fm.amplitude.getLastValue(), 5, 30 );
}

// We can change the parameters of the frequency modulation Oscil
// in real-time using the mouse.
void mouseMoved() {
  float modulateAmount = map( mouseY, 0, height, 220, 1 );
  float modulateFrequency = map( mouseX, 0, width, 0.1, 100 );
  
  fm.setFrequency( modulateFrequency );
  fm.setAmplitude( modulateAmount );
}
