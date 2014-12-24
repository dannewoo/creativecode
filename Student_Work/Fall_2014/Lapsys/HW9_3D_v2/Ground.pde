class Ground{
  int res;
  int interval;
  float amplitude;
  Ground(int _res, int _interval, float _amp){
    res = _res;
    interval = _interval;
    amplitude = _amp;
  }
  
  PVector[][] terraVertex;
  
  void generate(){
    terraVertex = new PVector[res+1][res+1];
    for(int i = 0; i <= res; i++){
      for(int j = 0; j <= res; j++){
        terraVertex[i][j] = new PVector(0, 0, 0);
        terraVertex[i][j].x = -((res/2) - i) * interval + random(-amplitude/2, amplitude/2);
        terraVertex[i][j].z = -((res/2) - j) * interval + random(-amplitude/2, amplitude/2);
        terraVertex[i][j].y = random(-amplitude/2, amplitude/2);
      }
    }
  }
  
  void spawn(){
    pushMatrix();
    strokeWeight(0.3);
    stroke(0);
    fill(120, 5, 70);
    for(int i = 0; i < res; i++){
      beginShape(TRIANGLE_STRIP);
      for(int j = 0; j <= res; j++){
        vertex(terraVertex[i][j].x, terraVertex[i][j].y, terraVertex[i][j].z);
        vertex(terraVertex[i+1][j].x, terraVertex[i+1][j].y, terraVertex[i+1][j].z);
      }
      endShape();
    }
    popMatrix(); 
  }
  
}
