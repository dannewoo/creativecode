class Button{
  int x, y;
  float w, h;
  boolean clicked;
  color off, hover, on;
  Button(int _x, int _y, int _w, int _h){
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    clicked = false;
    off = color(0);
    hover = color(130);
    on = color(240);
  }
  
  void drawButton(){
    pushMatrix();
    noStroke();
    if(mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h){
      fill(hover);
      if(mousePressed){
        if(!clicked){
          clicked = true;
        } else {
          clicked = false;
        }
        delay(100);
      }
    } else {
      if(clicked){
        fill(on);
      } else {
        fill(off);
      }
    }
    rect(x, y, w, h);
    popMatrix();
  }
}
