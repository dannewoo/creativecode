var img;

function setup(){
  createCanvas(600, 400, WEBGL);
  img = loadImage("img/world32k.jpg");
}

function draw(){
  background(0);
  rotateZ(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.01);
  //pass image as texture
  texture(img);
  sphere(100);
}