class Tree{
  float tHeight;
  PVector loc;
  color tColor;
  Tree(){
  }
  
  void randomize(float _size){
    tHeight = _size * random(0.95, 1.2);
  }
  
  void setHeight(float _th){
    tHeight = _th;
  }
  
  void setLocation(PVector _loc){
    loc = _loc;
  }
  
  void setLocation(float locX, float locY, float locZ){
    loc.x = locX;
    loc.y = locY;
    loc.z = locZ;
  }
  
  void setColor(color _tc){
    tColor = _tc;
  }
  
  void plant(){

      //drawCylinder(float topRadius, float bottomRadius, float topY, float bottomY)
      //Leaves
      //pushMatrix();
      fill(tColor);
      stroke(0);
      strokeWeight(0.3);
      drawCylinder(0, tHeight * 0.1, tHeight * 1.1, tHeight * 0.95, loc);
      drawCylinder(tHeight * 0.05, tHeight * 0.1, tHeight * 0.96, tHeight * 0.95, loc);
      
      drawCylinder(tHeight * 0.05, tHeight * 0.2, tHeight * 0.96, tHeight * 0.775, loc);
      drawCylinder(tHeight * 0.125, tHeight * 0.2, tHeight * 0.78, tHeight * 0.775, loc);
      
      drawCylinder(tHeight * 0.125, tHeight * 0.3, tHeight * 0.775, tHeight * 0.54, loc);
      drawCylinder(tHeight * 0.225, tHeight * 0.3, tHeight * 0.55, tHeight * 0.54, loc);
      
      drawCylinder(tHeight * 0.225, tHeight * 0.45, tHeight * 0.54, tHeight * 0.22, loc);
      drawCylinder(tHeight * 0.075, tHeight * 0.45, tHeight * 0.23, tHeight * 0.22, loc);
      //popMatrix();
      
      //pushMatrix();
      fill(35, 50, 40);
      drawCylinder(tHeight * 0.075, tHeight * 0.08, tHeight * 0.23, tHeight * 0.175, loc);
      drawCylinder(tHeight * 0.08, tHeight * 0.1, tHeight * 0.175, tHeight * 0.075, loc);
      drawCylinder(tHeight * 0.1, tHeight * 0.15, tHeight * 0.075, 0, loc);
      drawCylinder(tHeight * 0.15, tHeight * 0.2, 0, tHeight * -0.04, loc);
      //popMatrix();
  }
}
