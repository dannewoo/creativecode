import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup() {
  size(800,600,P3D);
  colorMode(HSB,360,100,100);
  background(246,100,5);
  
  minim = new Minim(this);
  player = minim.loadFile("The Heart of New York City at night  HD.mp3");
  player.play();
 
}

void draw() {
  
  background(246,100,5);
  fill(random(HSB,360),100,75);
  if (mousePressed) {
lights();
}
  
  
  //moon
  pushMatrix();
  sphere(125);
  popMatrix();
  
  //First building
  pushMatrix();
  translate(60,370,0);
  box(100,400,-20);
  popMatrix();
  
  //second building
  pushMatrix();
  translate(190,385,0);
  box(150,370,-20);
  popMatrix();
  
  //third building
  pushMatrix();
  translate(305,308,0);
  box(70,525,-20);
  popMatrix();
  
  //fourth building
  pushMatrix();
  translate(393,470,0);
  box(100,200,-20);
  popMatrix();
  
  //fifth building
  pushMatrix();
  translate(560,344,0);
  box(230,450,-20);
  popMatrix();
  
  //sixth building
  pushMatrix();
  translate(770,360,0);
  box(120,420,-20);
  popMatrix();

}
  
  

