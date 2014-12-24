 int mainw = 800;
  int mainh = 600;
  int rectsizemain = 100;
   int rectspmain = -26;
    int  rectsizesub = 40;
    int  ellsize = 10;
 
  void setup() { 
   size(mainw, mainh); 
   noStroke();   
   color white = color(255, 255, 255);
   color pink = color(255, 65, 182);
   color blue = color(0, 205, 255);
   color bg = color(91, 251, 72);
   colorMode(RGB, 255, 255, 255); 
   background(bg); 
//start design

      translate(width/2, height/2);
   // rotate(PI/4.0);
      fill(pink);
 
      rect (rectspmain, rectspmain, rectsizemain, rectsizemain);
       fill(blue);
        
      rect (rectspmain + 55, rectspmain + 5, rectsizesub , rectsizesub);

           rect (rectspmain +5, rectspmain +5 , rectsizesub , rectsizesub);
  rect (rectspmain + 5  , rectspmain +55 , rectsizesub , rectsizesub);

  rect (rectspmain + 55, rectspmain + 55 , rectsizesub , rectsizesub); 
 
    fill(white);
  ellipse(rectspmain + 12, rectspmain + 12 , ellsize, ellsize);
  ellipse(rectspmain + 38, rectspmain + 12 , ellsize, ellsize);
  ellipse(rectspmain + 12, rectspmain + 38 , ellsize, ellsize);
  ellipse(rectspmain + 38, rectspmain + 38 , ellsize, ellsize);

  ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 12 , ellsize, ellsize);
  ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 12 , ellsize, ellsize);
  ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 38 , ellsize, ellsize);
  ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 38 , ellsize, ellsize);
  
  
  ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
  ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
  ellipse(rectspmain + 12 + rectsizesub + 10, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
  ellipse(rectspmain + 38 + rectsizesub + 10, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
  
  ellipse(rectspmain + 12, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
  ellipse(rectspmain + 38, rectspmain + 12 + rectsizesub + 10, ellsize, ellsize);
  ellipse(rectspmain + 12, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
  ellipse(rectspmain + 38, rectspmain + 38 + rectsizesub + 10, ellsize, ellsize);
 
  }
