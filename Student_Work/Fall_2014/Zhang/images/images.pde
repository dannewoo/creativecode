PImage img,img2,img3,img4;

void setup(){

  size(1600,1000);

  background(255);
  

  img=loadImage("hong kong skyline.jpg");

  img2=loadImage("hong kong st.jpg");

  img.blend(img2,0,0,width,height,0,0,width,height,MULTIPLY);

  image(img,0,0);

}


void draw() {
  background(0);
  if (keyPressed && (key == 'a' || key == 'A')) {
    img=loadImage("hong kong skyline.jpg");

  img2=loadImage("hong kong st.jpg");

  img.blend(img2,0,0,width,height,0,0,width,height,MULTIPLY);

  image(img,0,0);
  } else {
    img3=loadImage("shanghai skyline.jpg");

  img4=loadImage("shanghai skyline2.jpg");

  img.blend(img4,0,0,width,height,0,0,width,height,ADD);

  image(img,0,0);
  }
}
