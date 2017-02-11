// Load the minim library
import ddf.minim.*;

// Initialize Minim and AudioPlayer
Minim minim;
AudioPlayer player;

void setup() {
  size(200, 200);
  
  // We pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  
  // Use the loadFile() function to load in your MP3
  player = minim.loadFile("marcus_kellis_theme.mp3");
  
  // play the file from start to finish.
  player.play();
}

// You need to have the draw loop so the audio can play
void draw() {
  background(0);
}

// On mousePressed rewind audio and start again
void mousePressed() {
  player.rewind();
}
