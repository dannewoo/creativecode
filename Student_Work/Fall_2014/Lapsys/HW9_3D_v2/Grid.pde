class Grid{
  PVector center;
  
  Grid(PVector cntr){
    center = cntr;
  }
  
  void showPlane(int w, int interval, String _plane){
    pushMatrix();
    translate(center.x, center.y, center.z);
    strokeWeight(0.5);
    stroke(0);
    if(_plane == "XZ"){
      for(int i = -w; i <= w; i += interval){
        line(-w, 0, i, w, 0, i);
        line(i, 0, -w, i, 0, w);
      }
    } else if(_plane == "XY"){
      for(int i = -w; i <= w; i += interval){
        line(-w, i, 0, w, i, 0);
        line(i, -w, 0, i, w, 0);
      }
    } else if(_plane == "YZ"){
      for(int i = -w; i <= w; i += interval){
        line(0, -w, i, 0, w, i);
        line(0, i, -w, 0, i, w);
      }
    }
    popMatrix();
  }
  
  void showAxes(float l){
    pushMatrix();
    strokeWeight(1);
    stroke(0,80, 100);
    line(center.x, center.y, center.z, center.x + l, center.y, center.z);
    stroke(120,80, 100);
    line(center.x, center.y, center.z, center.x, center.y + l, center.z);
    stroke(240,80, 100);
    line(center.x, center.y, center.z, center.x, center.y, center.z + l);
    popMatrix();
  }
}
