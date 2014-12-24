void drawCylinder(float topRadius, float bottomRadius, float topY, float bottomY, PVector location){
  float angle = 0;
  float increment = TWO_PI / 7;
  
  beginShape(QUAD_STRIP);
  for (int i = 0; i < 8; i++){
    vertex(location.x + topRadius * cos(angle), location.y - topY, location.z + topRadius * sin(angle));
    vertex(location.x + bottomRadius * cos(angle), location.y - bottomY, location.z + bottomRadius * sin(angle));
    angle += increment;
  }
  endShape();
}
