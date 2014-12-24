class TextAtTime{
  float fontSize, xPos, yPos;
  String inputText, alignType;
  PFont font;
  PlayerInterface track;
  color textColor;
  TextAtTime(PFont _font, float _size, PlayerInterface _track){
    fontSize = _size;
    font = _font;
    track = _track;
    xPos = width/2;
    yPos = height/2;
    textColor = color(0, 0, 100);
  }
  
  void changeFont(PFont _f){
    font = _f;
  }
  
  void changeSize(float _s){
    fontSize = _s;
  }
  
  void changeAlign(String _type){
    alignType = _type;
  }
  
  void changePosition(float _x, float _y){
    xPos = _x;
    yPos = _y;
  }
  
  void changeColor(color _c){
    textColor = _c;
  }
  
  void changeColor(String colorName){
    if(colorName == "RED"){
      textColor = color(0, 100, 100);
    } else if (colorName == "GREEN"){
      textColor = color(120, 100, 100);
    } else if (colorName == "BLUE"){
      textColor = color(240, 100, 100);
    } else if (colorName == "WHITE"){
      textColor = color(360);
    } else if (colorName == "BLACK"){
      textColor = color(0);
    } else if (colorName == "DKGRAY"){
      textColor = color(120);
    } else if (colorName == "LTGRAY"){
      textColor = color(240);
    } else if (colorName == "YELLOW"){
      textColor = color(60, 100, 100);
    } else if (colorName == "CYAN"){
      textColor = color(180, 100, 100);
    } else if (colorName == "PINK"){
      textColor = color(300, 100, 100);
    }
  }
  
  void drawText(String _text, int startMs, int endMs){
    inputText = _text;
    float elapsed = track.elapsedMs();
    if(elapsed >= startMs && elapsed <= endMs){
      pushMatrix();
      if(alignType == "CENTER"){
        textAlign(CENTER);
      } else if (alignType == "LEFT"){
        textAlign(LEFT);
      } else if (alignType == "RIGHT"){
        textAlign(RIGHT);
      }
      textFont(font, fontSize);
      fill(textColor);
      text(inputText, xPos, yPos);
      popMatrix();
    }
  }
  
}
