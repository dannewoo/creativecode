class Button {
  float w, h, xPos, yPos, bTextSize, textPosX, textPosY;
  color buttonColor, clickedColor, hoverColor, textColor;
  boolean on, hover;
  String buttonText;
  Button (){
  }
  
  void setSize(float _w, float _h){
    w = _w;
    h = _h;
  }
  
  void setTextSize(float _ts){
    bTextSize = _ts;
  }
  
  void setText(String _text){
    buttonText = _text;
  }
  
  void setPosition(float _xPos, float _yPos){
    xPos = _xPos;
    yPos = _yPos;
    textPosX = _xPos + (w/2);
    textPosY = _yPos + (h/2);
  }
  
  void setColor(float H, float S, float B, float A){
    buttonColor = color(H, S, B, A);
    clickedColor = color(H, S/2, B*1.5, A);
    hoverColor = color(H, S/1.5, B*1.1, A);
    textColor = color(H, 0, 100, A*1.2);
  }
  
  void drawButton(){
    if (mouseX >= xPos && mouseX <= (xPos + w) && mouseY >= yPos && mouseY <= (yPos + h)){
      hover = true;
      if (mousePressed) {
        on = true;
      } else {
        on = false;
      }
    } else {
      hover = false;
      on = false;
    }
    pushMatrix();
    if (hover == true && on == true){
      fill(clickedColor);
    } else if (hover == true && on == false){
      fill(hoverColor);
    } else if (hover == false){
      fill(buttonColor);
    }
    rectMode(CORNER);
    //translate(xPos, yPos);
    noStroke();
    rect(xPos, yPos, w, h);
    popMatrix();
    
    pushMatrix();
    //translate(textPosX, textPosY);
    textAlign(CENTER, CENTER);
    fill(textColor);
    textSize(bTextSize);
    text(buttonText, textPosX, textPosY);
    popMatrix();
  }
  
  public float getX(){
    return xPos;
  }
  
  public float getY(){
    return yPos;
  }
  
  public float getWidth(){
    return w;
  }
  
  public float getHeight(){
    return h;
  }
  
  public boolean isPressed(){
    return on;
  }
  
  public boolean isHovered(){
    return hover;
  }
}
