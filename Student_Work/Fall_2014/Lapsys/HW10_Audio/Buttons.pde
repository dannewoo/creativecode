  //  Create a Button class.
  //  The button construction syntax is the same you'd use for a regular rectangle:
  //    Button buttonName = new Button(x, y, width, height);
  //
  //  Button functions (in draw loop):
  //    buttonName.enable();                 -- enables the mouse actions for the button. Mouse1 = on, mouse2 = off;
  //    buttonName.colors(off, hover, on);   -- sets colors for the off/hover/on states of the button (grayscale only);
  //    buttonName.show();                   -- actually show the buttons. the colors will be the ones declared using .colors function;
  //    buttonName.isOn();                   -- returns "true" or "false", depending if the button is on or off, respectively;


class Button{
  int w, h, leftBorder, rightBorder, topBorder, bottomBorder;
  boolean on;
  float onColor, offColor, hoverColor;
  Button(int _x, int _y, int _w, int _h){
    w = _w;
    h = _h;
    leftBorder = _x;
    rightBorder = _x + _w;
    topBorder = _y;
    bottomBorder = _y + _h;
    on = false;
  }
  
  void enable(){
    if(mousePressed == true && mouseX > leftBorder && mouseX < rightBorder && mouseY > topBorder && mouseY < bottomBorder){
      if(mouseButton == LEFT){
        on = true;
      } else if(mouseButton == RIGHT){
        on = false;
      }
    }
  }
  
  void colors(float _c1, float _c2, float _c3){
    offColor = _c1;
    hoverColor = _c2;
    onColor = _c3;
  }
  
  void show(){
    pushMatrix();
    if (on){
      fill(onColor);
    } else if(!on){
      if(mouseX > leftBorder && mouseX < rightBorder && mouseY > topBorder && mouseY < bottomBorder){
        fill(hoverColor);
      } else {
        fill(offColor);
      }
    }
    rect(leftBorder, topBorder, w, h);
    popMatrix();
  }
  
  boolean isOn(){
    return on;
  }
}
