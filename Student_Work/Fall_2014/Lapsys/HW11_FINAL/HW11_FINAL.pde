//import processing.video.*;
import ddf.minim.*;

Minim main;
AudioPlayer song;
PlayerInterface inter;
//Movie[] clip;
PFont lyricFont, lyricFontItalian;
TextAtTime[] lyricText;

float[] tempVar;

PImage eyesImg;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, 360, 100, 100, 100);
  background(0);
  smooth();
  noStroke();
  noCursor();

  main = new Minim(this);
  song = main.loadFile("My_Eyes_short.wav");
//  clip = new Movie[1];
//  clip[0] = new Movie(this, "DISCOVERY_nosound.mp4");
  inter = new PlayerInterface(song/*, clip*/);
  lyricFont = loadFont("testFont200.vlw");
  lyricFontItalian = loadFont("SegoeUIBlack-Italic-200.vlw");
  lyricText = new TextAtTime[20];
  for(int i = 0; i < 20; i++){
    lyricText[i] = new TextAtTime(lyricFont, 70, inter);
  }
  
  inter.setStartMs(100);
  inter.setTickRate(174*2);
  
  
  
  
  tempVar = new float[100];
  for(int i = 0; i < 100; i++){
    tempVar[i] = 0;
  }
  
  eyesImg = loadImage("eyes.jpg");
  
  lyricText[1].changeFont(lyricFontItalian);
}

void draw() {
  background(0);
  
  inter.enable();
//  inter.videoAtTime(0, round(inter.ticksToElapsedMs(129)), 100000, 0.1);
//  inter.showBar();
//  inter.showStats(20);
  if (inter.ticks() >= 1 && inter.ticks() < 31){
    tempVar[1] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(1), inter.ticksToElapsedMs(31), 100, 0);
    tempVar[2] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(1), inter.ticksToElapsedMs(31), 10, 400);
    tempVar[3] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(3), inter.ticksToElapsedMs(31), 10, 400);
    pushMatrix();
    fill(360, tempVar[1]);
    ellipse(0.25 * width, 0.25 * height, tempVar[2], tempVar[2]);
    if(inter.ticks() >= 3){
      fill(220, 50, 100, tempVar[1]);
      ellipse(0.75 * width, 0.25 * height, tempVar[3], tempVar[3]);
    }
    popMatrix();
  } else if (inter.ticks() >= 31 && inter.ticks() < 65){
    tempVar[4] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(31), inter.ticksToElapsedMs(65), 100, 0);
    tempVar[5] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(31), inter.ticksToElapsedMs(65), 10, 400);
    tempVar[6] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(33), inter.ticksToElapsedMs(65), 10, 400);
    tempVar[7] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(35), inter.ticksToElapsedMs(65), 10, 400);
    pushMatrix();
    fill(360, tempVar[4]);
    ellipse(width/2, 0.75 * height, tempVar[5], tempVar[5]);
    if(inter.ticks() >= 33){
      fill(220, 50, 100, tempVar[4]);
      ellipse(width/2, 0.5 * height, tempVar[6], tempVar[6]);
    }
    if(inter.ticks() >= 35){
      fill(360, tempVar[4]);
      ellipse(width/2, 0.25 * height, tempVar[7], tempVar[7]);
    }
    popMatrix();
  } else if (inter.ticks() >= 65 && inter.ticks() < 95){
    tempVar[8] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(65), inter.ticksToElapsedMs(95), 100, 0);
    tempVar[9] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(65), inter.ticksToElapsedMs(95), 10, 400);
    tempVar[10] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(67), inter.ticksToElapsedMs(95), 10, 400);
    tempVar[11] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(71), inter.ticksToElapsedMs(95), 10, 400);
    pushMatrix();
    fill(220, 50, 100, tempVar[8]);
    ellipse(0.25 * width, 0.75 * height, tempVar[9], tempVar[9]);
    if(inter.ticks() >= 67){
      fill(360, tempVar[8]);
      ellipse(0.75 * width, 0.25 * height, tempVar[10], tempVar[10]);
    }
    if(inter.ticks() >= 71){
      fill(220, 50, 100, tempVar[8]);
      ellipse(0.5 * width, 0.5 * height, tempVar[11], tempVar[11]);
    }
    popMatrix();
  } else if(inter.ticks() >= 95 && inter.ticks() < 129){
    tempVar[12] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(95), inter.ticksToElapsedMs(129), 100, 0);
    tempVar[13] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(95), inter.ticksToElapsedMs(129), 10, 400);
    tempVar[14] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(97), inter.ticksToElapsedMs(129), 10, 400);
    tempVar[15] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(99), inter.ticksToElapsedMs(129), 10, 400);
    pushMatrix();
    fill(360, tempVar[12]);
    ellipse(0.1 * width,  0.5 * height, tempVar[13], tempVar[13]);
    if(inter.ticks() >= 97){
      fill(220, 50, 100, tempVar[12]);
      ellipse(0.9 * width, 0.5 * height, tempVar[14], tempVar[14]);
    }
    if(inter.ticks() >= 99){
      fill(360, tempVar[12]);
      ellipse(0.5 * width, 0.5 * height, tempVar[15], tempVar[15]);
    }
    popMatrix();
  } else if(inter.ticks() >= 129 && inter.ticks() < 159){
    tempVar[16] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(129), inter.ticksToElapsedMs(159), 100, 0);
    tempVar[17] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(129), inter.ticksToElapsedMs(159), 10, 400);
    tempVar[18] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(131), inter.ticksToElapsedMs(159), 10, 400);
    tempVar[39] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(129), inter.ticksToElapsedMs(133), 0, 100);
    tempVar[40] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(133), inter.ticksToElapsedMs(137), 0, 100);
    tempVar[41] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(137), inter.ticksToElapsedMs(159), 100, 50);
    pushMatrix();
    if(inter.ticks() < 133){
      fill(color(0, 0, tempVar[39]));
    } else if (inter.ticks() >= 133 && inter.ticks() < 137){
      fill(color(0, tempVar[40], 100));
    } else if (inter.ticks() >= 137){
      fill(color(0, tempVar[41], 100));
    }
    rect(0,0,width,height);    
    popMatrix();
    pushMatrix();
    fill(300, tempVar[16]);
    ellipse(0.3 * width, 0.34 * height, tempVar[17], tempVar[17]);
    if(inter.ticks() >= 131){
      ellipse(0.82 * width, 0.36 * height, tempVar[18], tempVar[18]);
    }
    popMatrix();
  } else if(inter.ticks() >= 159 && inter.ticks() < 193){
    tempVar[19] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(159), inter.ticksToElapsedMs(193), 0, 200);
    tempVar[20] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(159), inter.ticksToElapsedMs(193), 100, 0);
    tempVar[21] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(159), inter.ticksToElapsedMs(193), 10, 400);
    tempVar[22] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(161), inter.ticksToElapsedMs(193), 10, 400);
    tempVar[23] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(163), inter.ticksToElapsedMs(193), 10, 400);
    pushMatrix();
    fill(tempVar[19], 50, 100);
    rect(0,0,width,height);
    popMatrix();
    pushMatrix();
    fill(360, tempVar[20]);
    ellipse(0.8 * width, 0.8 * height, tempVar[21], tempVar[21]);
    if(inter.ticks() >= 161){
      ellipse(0.2 * width, 0.8 * height, tempVar[22], tempVar[22]);
    }
    if(inter.ticks() >= 163){
      ellipse(0.5 * width, 0.3 * height, tempVar[23], tempVar[23]);
    }
    popMatrix();
  } else if(inter.ticks() >= 193 && inter.ticks() < 225){
    tempVar[20] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(193), inter.ticksToElapsedMs(225), 100, 0);
    pushMatrix();
    noTint();
    noFill();
    imageMode(CENTER);
    image(eyesImg, width/2, height/2);
    popMatrix();
    pushMatrix();
    fill(200, 50, 100 ,tempVar[20]);
    rect(0,0,width,height);
    popMatrix();
  } else if (inter.ticks() >= 225 && inter.ticks() < 249){
    tempVar[21] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(225), inter.ticksToElapsedMs(249), 0, 100);
    pushMatrix();
    image(eyesImg, width/2, height/2);
    fill(0, tempVar[21]);
    rect(0,0,width,height);
    popMatrix();
  } else if(inter.ticks() >= 249 && inter.ticks() < 253){
    tempVar[21] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(249), inter.ticksToElapsedMs(253), 100, 20);
    rectMode(CENTER);
    pushMatrix();
    for(int i = 1; i < 5; i++){
      fill(random(300, 360), tempVar[21]);
      rect((0.20 * i) * width, height/2, 20, height);
    }
    popMatrix();
  } else if(inter.ticks() >= 253 && inter.ticks() < 257){
    tempVar[22] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(253), inter.ticksToElapsedMs(257), 100, 20);
    pushMatrix();
    for(int i = 1; i < 5; i++){
      fill(random(300, 360), tempVar[22]);
      rect(width/2, (0.20 * i) * height, width, 20);
    }
    popMatrix();
  } else if(inter.ticks() >= 257 && inter.ticks() < 281){
    if(inter.ticks() < 259){
      lyricText[0].changeAlign("CENTER");
      lyricText[0].changeColor("RED");
      lyricText[0].changeSize(400);
      lyricText[0].drawText("MY", 0, 100000);
    } else if (inter.ticks() >= 259){
      tempVar[23] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(259), inter.ticksToElapsedMs(273), 100, 0);
      tempVar[42] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(275), inter.ticksToElapsedMs(281), 0, 100);
      lyricText[0].changeColor(color(0, 0, 100, tempVar[23]));
      lyricText[0].drawText("EYES", 0, 100000);
      pushMatrix();
      rectMode(CORNER);
      fill(0);
      if (inter.ticks() >= 273 && inter.ticks() < 275){
        image(eyesImg, width/2, height/2);
        rect(0, 0, width/2, height);
      }
      if (inter.ticks() >= 275){
        image(eyesImg, width/2, height/2);
        rect(width/2, 0, width/2, height);
        fill(0, tempVar[42]);
        rect(0, 0, width, height);
      }
      popMatrix();
    }
  } else if (inter.ticks() >= 281 && inter.ticks() < 319){
    tempVar[24] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(281), inter.ticksToElapsedMs(303), 0, width);
    tempVar[43] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(303), inter.ticksToElapsedMs(319), width * 0.25, width);
    tempVar[44] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(305), inter.ticksToElapsedMs(319), width * 0.5, width);
    tempVar[45] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(307), inter.ticksToElapsedMs(319), width * 0.75, width);
    if(inter.ticks() == 281){
      lyricText[0].changePosition(10, height/8);
      lyricText[0].changeColor("WHITE");
      lyricText[0].changeAlign("LEFT");
      lyricText[0].changeSize(50);
      lyricText[0].drawText("FOL", 0, 100000);
    } else if (inter.ticks() > 281 && inter.ticks() < 283){
      lyricText[0].drawText("FOL", 0, 100000);
    } else if (inter.ticks() >= 283 && inter.ticks() < 285){
      lyricText[0].drawText("FOLLOW", 0, 100000);
    } else if (inter.ticks() >= 285 && inter.ticks() < 287){
      lyricText[0].drawText("FOLLOW YOU", 0, 100000);
    } else if (inter.ticks() >= 287 && inter.ticks() < 293){
      lyricText[0].drawText("FOLLOW YOU AROUND", 0, 100000);
    } else if (inter.ticks() >= 293 && inter.ticks() < 295){
      lyricText[0].drawText("FOLLOW YOU AROUND THE", 0, 100000);
    } else if (inter.ticks() >= 295 && inter.ticks() < 319){
      lyricText[0].drawText("FOLLOW YOU AROUND THE ROOM", 0, 100000);
    }
    pushMatrix();
    strokeWeight(5);
    stroke(360);
    for(int i = 3; i < 10; i++){
      line(random(-50, -40), (0.1 * i) * height, tempVar[24], (0.1 * i) * height);
      line(width, ((0.1 * i) - 0.05) * height , width - tempVar[24], ((0.1 * i) - 0.05) * height);
    }
    fill(0);
    noStroke();
    if(inter.ticks() >= 303){
      ellipse(tempVar[43], height * 0.6, 400, 400);
    }
    if(inter.ticks() >= 305){
      ellipse(tempVar[44], height * 0.6, 400, 400);
    }
    if(inter.ticks() >= 307){
      ellipse(tempVar[45], height * 0.6, 400, 400);
    }
    popMatrix();
  } else if (inter.ticks() >= 319 && inter.ticks() < 345){
    tempVar[25] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(321), inter.ticksToElapsedMs(345), 100, 0);
    if(inter.ticks() == 319){
      lyricText[0].changeColor("WHITE");
      lyricText[0].changeSize(350);
      lyricText[0].changeAlign("RIGHT");
      lyricText[0].changePosition(width-10, 0.6 * height);
      lyricText[0].drawText("...", 0, 100000);
    } else if (inter.ticks() > 319 && inter.ticks() < 321){
      lyricText[0].drawText("...AND", 0, 100000);
    } else if (inter.ticks() >= 321){
      lyricText[0].changeColor(color(360, tempVar[25]));
      lyricText[0].drawText("...AND I", 0, 100000);
    }
    
    pushMatrix();
    fill(360);
    
    popMatrix();
  } else if (inter.ticks() >= 345 && inter.ticks() < 377){
    tempVar[26] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(359), inter.ticksToElapsedMs(377), 80, 0);
    if(inter.ticks() == 345){
      lyricText[0].changeColor(color(random(360), 70, 80));
      lyricText[0].changeAlign("CENTER");
      lyricText[0].changePosition(width/2, height/2);
      lyricText[0].changeSize(400);
      lyricText[0].drawText("ONLY", 0, 100000);
    } else if (inter.ticks() > 345 && inter.ticks() < 349){
      lyricText[0].changeColor(color(random(360), 70, 80));
      lyricText[0].drawText("ONLY", 0, 100000);
    } else if (inter.ticks() >= 349 && inter.ticks() < 353){
      lyricText[0].changeColor(color(random(360), 70, 80));
      lyricText[0].drawText("EVER", 0, 100000);
    } else if (inter.ticks() >= 353 && inter.ticks() < 357){
      lyricText[0].changeColor(color(random(360), 70, 80));
      lyricText[0].drawText("LOOK", 0, 100000);
    } else if (inter.ticks() >= 357 && inter.ticks() < 359){
      lyricText[0].changeColor(color(random(360), 70, 80));
      lyricText[0].drawText("AT", 0, 100000);
    } else if (inter.ticks() >= 359 && inter.ticks() < 377){
      lyricText[0].changeColor(color(random(360), 70, tempVar[26]));
      lyricText[0].drawText("YOU", 0, 100000);
    }
  } else if (inter.ticks() >= 377 && inter.ticks() < 381){
    tempVar[27] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(377), inter.ticksToElapsedMs(381), 100, 0);
    pushMatrix();
    for(int i = 1; i < 9; i++){
      fill(random(300, 360), tempVar[27]);
      rect((0.125 * i) * width, height/3, 20, height);
    }
    popMatrix();
  } else if (inter.ticks() >= 381 && inter.ticks() < 385){
    tempVar[28] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(381), inter.ticksToElapsedMs(385), 100, 0);
    pushMatrix();
    for(int i = 1; i < 9; i++){
      fill(random(300, 360), tempVar[28]);
      rect(width/3, (0.125 * i) * height, width, 20);
    }
    popMatrix();
    lyricText[0].changeColor(color(0, 0, random(100)));
    lyricText[0].changeAlign("LEFT");
    lyricText[0].changePosition(10, height/4);
    lyricText[0].changeSize(300);
    lyricText[0].drawText("SO", 0, 100000);
  } else if (inter.ticks() >= 385 && inter.ticks() < 409){
    tempVar[29] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(385), inter.ticksToElapsedMs(409), 0, width);
    tempVar[30] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(385), inter.ticksToElapsedMs(409), 0, height);
    tempVar[31] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(385), inter.ticksToElapsedMs(397), 0, 70);
    tempVar[32] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(397), inter.ticksToElapsedMs(409), 70, 0);
//    tempVar[33] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(401), inter.ticksToElapsedMs(409), 100, 0);
//    tempVar[34] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(401), inter.ticksToElapsedMs(409), 0, 400);
//    tempVar[35] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(403), inter.ticksToElapsedMs(409), 0, 400);
    pushMatrix();
    fill(360, tempVar[31]);
    if (inter.ticks() >= 397){
      fill(360, tempVar[32]);
    }
    for(int i = 1; i < 10; i++){
      ellipse(map(tempVar[30], 0, width, random(-20, 0), random(width, width+20)), (i * 0.25 * height), 100, 100);
    }
    popMatrix();
//    if (inter.ticks() >= 401){
//      pushMatrix();
//      fill(360, tempVar[33]);
//      ellipse(0.8 * width, 0.25 * height, tempVar[34], tempVar[34]);
//      if (inter.ticks() >= 403){
//        ellipse(0.8 * width, 0.75 * height, tempVar[35], tempVar[35]);
//      }
//      popMatrix();
//    }
    if(inter.ticks() == 385){
      lyricText[0].changeColor(360);
      lyricText[0].changeSize(100);
      lyricText[0].changePosition(10, height/2);
      lyricText[0].drawText("W", 0, 100000);
    } else if (inter.ticks() == 386){
      lyricText[0].drawText("WH", 0, 100000);
    } else if (inter.ticks() == 387){
      lyricText[0].drawText("WHE", 0, 100000);
    } else if (inter.ticks() == 388){
      lyricText[0].drawText("WHERE", 0, 100000);
    } else if (inter.ticks() >= 389 && inter.ticks() < 391){
      lyricText[0].drawText("WHERE YOU", 0, 100000);
    } else if (inter.ticks() >= 391 && inter.ticks() < 409){
      lyricText[0].drawText("WHERE YOU MOVE", 0, 100000);
    }
    
    
  } else if (inter.ticks() >= 409 && inter.ticks() < 445){
    tempVar[46] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(429), inter.ticksToElapsedMs(430), 0, 100);
    tempVar[47] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(430), inter.ticksToElapsedMs(433), 0, 100);
    tempVar[48] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(433), inter.ticksToElapsedMs(434), 0, 100);
    tempVar[49] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(434), inter.ticksToElapsedMs(445), 0, 100);
    if(inter.ticks() >= 409 && inter.ticks() < 411){
      lyricText[0].changeColor(200);
      lyricText[0].changeSize(70);
      lyricText[0].changePosition(10, height/2);
      lyricText[0].drawText("GET", 0, 100000);
    } else if (inter.ticks() >= 411 && inter.ticks() < 413){
      lyricText[0].drawText("GET A", 0, 100000);
    } else if (inter.ticks() >= 413 && inter.ticks() < 429){
      lyricText[0].drawText("GET A FEELING", 0, 100000);
    }
    if (inter.ticks() >= 417 && inter.ticks() < 421){
      lyricText[1].changeAlign("LEFT");
      lyricText[1].changeColor(360);
      lyricText[1].changeSize(150);
      lyricText[1].changePosition(10, height/2 + height/3);
      lyricText[1].drawText("I", 0, 100000);
    } else if (inter.ticks() >= 421 && inter.ticks() < 423){
      lyricText[1].drawText("I CAN'T", 0, 100000);
    } else if (inter.ticks() >= 423 && inter.ticks() < 429){
      lyricText[1].drawText("I CAN'T HIDE", 0, 100000);
    }
    if(inter.ticks() >= 429){
      pushMatrix();
      image(eyesImg, width/2, height/2);
      if(inter.ticks() == 429){
        fill(0, tempVar[46]);
      } else if (inter.ticks() >= 430 && inter.ticks() < 433){
        fill(0, tempVar[47]);
      } else if (inter.ticks() == 433){
        fill(0, tempVar[48]);
      } else if (inter.ticks() >= 434 && inter.ticks() < 445){
        fill(0, tempVar[49]);
      }
      rect(0,0,width,height);
      popMatrix();
    }
  } else if (inter.ticks() >= 445 && inter.ticks() < 473){
    tempVar[36] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(465), inter.ticksToElapsedMs(473), 0, 100);
    if(inter.ticks() >= 445 && inter.ticks() < 449){
      lyricText[0].changeAlign("CENTER");
      lyricText[0].changeColor(color(220, 80, 100));
      lyricText[0].changeSize(100);
      lyricText[0].changePosition(width/2.5, 70);
      lyricText[0].drawText("IT'S", 0, 100000);
    } else if(inter.ticks() >= 449 && inter.ticks() < 453){
      lyricText[0].drawText("IT'S UP", 0, 100000);
    } else if(inter.ticks() >= 453 && inter.ticks() < 455){
      lyricText[0].drawText("IT'S UP TO", 0, 100000);
    } else if(inter.ticks() >= 455 && inter.ticks() < 465){
      lyricText[0].drawText("IT'S UP TO YOU", 0, 100000);
      if(inter.ticks() == 457){
        lyricText[1].changeColor("WHITE");
        lyricText[1].changeAlign("CENTER");
        lyricText[1].changeSize(350);
        lyricText[1].changePosition(width/2,height/2);
      }
      if(inter.ticks() == 459){
        lyricText[1].changeColor("RED");
        lyricText[1].changeSize(250);
        lyricText[1].changePosition(0.25 * width ,height/2);
      }
      if(inter.ticks() == 461){
        lyricText[1].changeColor("GREEN");
        lyricText[1].changeSize(150);
        lyricText[1].changePosition(0.75 * width ,height/2);
      }
      if(inter.ticks() == 463){
        lyricText[1].changeColor("BLUE");
        lyricText[1].changeSize(50);
        lyricText[1].changePosition(0.25 * width ,height/2);
      }
      if(inter.ticks() >= 457){
        lyricText[1].drawText("YOU", 0, 200000);
      }
    }
    pushMatrix();
    rectMode(CORNER);
    fill(0);
    if (inter.ticks() >= 465 && inter.ticks() < 467){
      image(eyesImg, width/2, height/2);
      rect(0, 0, width/2, height);
    }
    if (inter.ticks() >= 467 && inter.ticks() < 473){
      image(eyesImg, width/2, height/2);
      rect(width/2, 0, width/2, height);
      fill(0, tempVar[36]);
      rect(0, 0, width/2, height);
    }
    popMatrix();
  } else if (inter.ticks() >= 473 && inter.ticks() < 505){
    if(inter.ticks() >= 473 && inter.ticks() < 475){
      lyricText[0].changeAlign("CENTER");
      lyricText[0].changeColor("WHITE");
      lyricText[0].changeSize(60);
      lyricText[0].changePosition(width/2, height/2);
      lyricText[0].drawText("IF", 0, 100000);
    } else if(inter.ticks() >= 475 && inter.ticks() < 477){
      lyricText[0].drawText("IF WE'RE", 0, 100000);
    } else if(inter.ticks() >= 477 && inter.ticks() < 481){
      lyricText[0].drawText("IF WE'RE GONNA", 0, 100000);
    } else if(inter.ticks() >= 481 && inter.ticks() < 483){
      lyricText[0].drawText("IF WE'RE GONNA DO", 0, 100000);
    } else if(inter.ticks() >= 483 && inter.ticks() < 485){
      lyricText[0].drawText("IF WE'RE GONNA DO THIS", 0, 100000);
    } else if(inter.ticks() >= 485 && inter.ticks() < 505){
      lyricText[0].drawText("IF WE'RE GONNA DO THIS", 0, 100000);
      lyricText[1].changeAlign("CENTER");
      lyricText[1].changeColor("RED");
      lyricText[1].changeSize(200);
      lyricText[1].changePosition(width/2, height * 0.75);
      lyricText[1].drawText("TONIGHT", 0, 100000);
    }
  } else if (inter.ticks() >= 505 && inter.ticks() < 509){
    tempVar[37] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(505), inter.ticksToElapsedMs(509), 200, 0);
    pushMatrix();
    fill(360, tempVar[37]%100);
    rect(0, 0, width, height);
    lyricText[0].changeSize(300);
    lyricText[0].changePosition(width/2, height/2 + 250);
    lyricText[0].changeColor("BLACK");
    lyricText[0].drawText("MY", 0, 100000);
    popMatrix();
  } else if (inter.ticks() >= 509 && inter.ticks() < 513){
    tempVar[38] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(509), inter.ticksToElapsedMs(513), 200, 0);
    pushMatrix();
    fill(220, 60, 100, tempVar[38]%100);
    rect(0, 0, width, height);
    lyricText[0].drawText("EYES", 0, 100000);
    popMatrix();
  } else if (inter.ticks() >= 513 && inter.ticks() < 544){
    tempVar[50] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(513), inter.ticksToElapsedMs(544), 100, width/2);
    tempVar[51] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(513), inter.ticksToElapsedMs(544), 300, 0);
    pushMatrix();
    fill(360);
    ellipse(tempVar[50], height/2, tempVar[51], tempVar[51]);
    ellipse(width - tempVar[50], height/2, tempVar[51], tempVar[51]);
    popMatrix();
  } else if (inter.ticks() >= 544 && inter.ticks() < 577){
    tempVar[52] = linearChange(inter.elapsedMs(), inter.ticksToElapsedMs(544), inter.ticksToElapsedMs(545), 0, 100);
    pushMatrix();
    if(inter.ticks() == 544){
      fill(360, tempVar[52]);
    } else if (inter.ticks() >= 545) {
      fill(360);
    }
    rect(0,0,width,height);
    popMatrix();
    lyricText[0].changeAlign("CENTER");
    lyricText[0].changeSize(190);
    lyricText[0].changePosition(width/2, height/2);
    lyricText[0].changeColor("BLACK");
    lyricText[0].drawText("TRACK:", 0, 100000);
    lyricText[1].changeAlign("CENTER");
    lyricText[1].changeColor("BLACK");
    lyricText[1].changeSize(80);
    lyricText[1].changePosition(width/2, height * 0.75);
    lyricText[1].drawText("NERO - MY EYES", 0, 200000);
  } else if (inter.ticks() >= 577 && inter.ticks() < 609){
    pushMatrix();
    fill(360);
    rect(0,0,width,height);
    popMatrix();
    lyricText[0].changeSize(50);
    lyricText[0].drawText("ANIMATION BY:", 0, 200000);
    lyricText[1].changeSize(60);
    lyricText[1].drawText("ADOLFAS LAPSYS", 0, 200000);
  } else if (inter.ticks() >= 609 && inter.ticks() < 641){
    pushMatrix();
    fill(360);
    rect(0,0,width,height);
    popMatrix();
    lyricText[0].changeSize(40);
    lyricText[0].drawText("THANK YOU FOR WATCHING!", 0, 200000);
    lyricText[1].changeSize(30);
    lyricText[1].drawText("THIS TOOK LONGER THAN IT SHOULD HAVE :(", 0, 200000);
  } else if (inter.ticks() >= 641 && inter.ticks() < 673){
    pushMatrix();
    fill(360);
    rect(0,0,width,height);
    popMatrix();
    lyricText[0].changeSize(20);
    lyricText[0].drawText("GOOD LUCK ON YOUR OTHER FINALS!", 0, 200000);
  } else if (inter.ticks() == 705){
    exit();
  }
  
}

//void movieEvent(Movie m) {
//  m.read();
//}

/*My eyes, follow you around the room,
And I, only ever look at you,
So where you move, get a feeling I can't hide,
It's up to you, if we're gonna to do this tonight...
*/
