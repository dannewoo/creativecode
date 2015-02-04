int recordD = 700;
int recordLabelD = recordD/3;
int recordHoleD = 20;
int rectW = 175;
int rectH = 10;
int square = 13;

void setup() {
  size(425, 600);
  background(200);
  noStroke();
  fill(30);
  ellipse(width/2, height/3, recordD, recordD);
  fill(255);
  ellipse(width/2, height/3, recordLabelD, recordLabelD);
  fill(30);
  ellipse(width/2, height/3, recordHoleD, recordHoleD);
}
