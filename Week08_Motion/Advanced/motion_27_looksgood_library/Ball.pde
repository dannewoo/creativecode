class Ball{
  PVector startPos;
  PVector curPos;
  float diameter;
  Ani animation;
  
  Ball(float startX, float startY, float _diameter, float animationTime){
    startPos = new PVector(startX, startY);
    curPos = new PVector(startX, startY);
    diameter = _diameter;
    // create the animation. It will start right away
    animation = new Ani(curPos, animationTime, "y", height-(diameter/2), Ani.BOUNCE_OUT);
    // repeat the animation forever
    animation.repeat();
  }

  void display(){
    fill(40, 100, 170);
    ellipse(curPos.x, curPos.y, diameter, diameter);
  }
}
