class AniCamera{
  PVector pos;
  PVector foc;
  AniCamera(){
    pos = new PVector(100, -100, 100);
    foc = new PVector(0 ,0 ,0);
  }
  
  void enable(){
    camera(pos.x, pos.y, pos.z, foc.x, foc.y, foc.z, 0, 1, 0);
  }
  
  void setPos(PVector _pos){
    pos = _pos;
  }
  
  void setPos(float posX, float posY, float posZ){
    pos.x = posX;
    pos.y = posY;
    pos.z = posZ;
  }
  
  void setFocus(PVector _foc){
    foc = _foc;
  }
  
  void setFocus(float focX, float focY, float focZ){
    foc.x = focX;
    foc.y = focY;
    foc.z = focZ;
  }
  
  PVector getLocation(){
    return pos;
  }
  
//  void moveTo(PVector newLoc, int frameStart, int frameEnd){
//    PVector oldLoc = new PVector(pos.x, pos.y, pos.z);
//    
//  }

  void setRotation(float radius, float revLength, String direction){
    float angle = radians(map(frameCount, 0, revLength, 0, 360));
    if(direction == "LEFT"){
      pos.x = radius * cos(angle); 
      pos.z = radius * sin(angle);
    } else if (direction == "RIGHT"){
      pos.x = radius * cos(-angle);
      pos.z = radius * sin(-angle);
    }
  }
}
