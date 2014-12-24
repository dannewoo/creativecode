
class Triangles {
  private float x,y;
  private int c;
  float colorRange = random(10, 40);
  float origColor = random(0,360);
  
  
  
  public Triangles(float x, float y, int c)  {
    this.x=x;
    this.y=y;
    //this.c=c; //color
  }
  public Triangles (){
    x=0;
    y=0;
    c=0;
  }
  public void draw (){
    noStroke();
    // if (mousePressed && (mouseButon==LEFT)) {
      
    //fill(157,183,201);
  //}
  if(c==0){
    fill(origColor, 290, 80);
    c=1;}
    else
    if(c==1){
      fill(150);
      c=2;}
      else
      if(c==2){
        fill(255);
        c=0;}
  if(x==x){ 
    x=x+55;
    triangle(-54+x, 60+y, -26+x, 5+y, 2+x, 60+y);
  }
  if(x>=600){
    x=1;
    y=y+57;
  }
}
}
Triangles[]b=new
Triangles[10];
void setup(){
  size(610,575);
  noStroke();
  for(int i=0; i<b.length;i ++)
  b[i]=new Triangles();
  background(115);
  
}
void draw() {
  for(int i=0; i<b.length;i ++){
    b[i].draw();
  }
}
    
//void setup() {
  //size(600, 400);
  //noStroke();
  //fill(255);
  
  
      //fill(157, 183, 201);
      //if(x==x){x=x+55; triangle
   //triangle(0, 0, 40, 0, 20, 30); 
   //if
   
   // }
  
