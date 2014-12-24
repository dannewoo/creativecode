PImage img1, img2, img3;


void setup() {
  size(900, 650);
  rectMode(CENTER);
  background(255);
//  img1 = loadImage("1.jpg");
  img2 = loadImage("2.jpg");
//  img3 = loadImage("3.jpg");

}


void draw(){
  background(255);
  if(keyPressed){
    if(key == 'q'){
    image(img2, 30, 30, width-60, height-60);
        } else if(key == ' '){
        }
  }
        
    if (mousePressed) {
    noStroke(); 
    fill(255);
    ellipse(400, 380, 200, 200);
    ellipse(295, 480, 150, 150);
    ellipse(620, 450, 250, 250);
    }
    
}

  
  
//    } else if (key == 'w'){
//      image(img1, 30, 30, width-60, height-60);
//         } else if(key == ' '){
//         background(255); 
//    } else if (key == 'e'){
//      image(img3, 0, 0, width/2, height/2);
//    } else if(key == ' '){
//    background(255); 


// if (mouseReleased)
//  undo();






  
