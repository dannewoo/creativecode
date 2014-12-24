
//snow bg
float snowsppd = -10;
int maxStarSize = 14;
String graphicsMode =  P2D;
ArrayList fallingChars;

class fallingStar {
  int mx;
  float my;
  int mAlpha;
  float mSize;
  float mRotate;
  int mnPoints;
  //constructor
  fallingStar(int x, int y) 
      {mx = x; 
       my = y; 
       mAlpha = displayHeight; 
       mSize = random(maxStarSize);
       mRotate = random(TWO_PI);
       mnPoints = 5 + (int)random(5);
      }
    
  boolean notVisible() { 
    if (my < 0) {return false;}
    else
  return (my > height) || (mAlpha < 0)  || (mSize < 1.5);
  }
  
  void display()
    {
      if (!notVisible()) {
    fill(color(0,0,100), mAlpha);
    pushMatrix();
    translate(mx - mSize /2, my - mSize /2);
    rotate(mRotate);
    star(mnPoints,mSize, mSize/4);
    popMatrix();
      }
    }
    
   void fall()
    {
      mAlpha = mAlpha - 1;
      my = my + 1 + mSize + snowsppd;
      mSize = mSize * 0.99;
    }
}

void CreateChar(int n)
{
      int x = (int)random(width);
      int y = (int)random(height/ n);
      if (n == 1) 
      fallingChars.add(new fallingStar(x, y));  
      else // top-up
      fallingChars.add(new fallingStar(x, -y));  
}

