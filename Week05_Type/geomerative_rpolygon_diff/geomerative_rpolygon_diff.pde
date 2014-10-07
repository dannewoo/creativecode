import geomerative.*;
RPolygon circle1;
RPolygon circle2;

void setup() {
    size(600, 400, P2D);
    smooth();
    background(255, 0, 0);
    noStroke();
    fill(255);

    RG.init(this);
    circle1 = RShape.createCircle(0, 0, 100).toPolygon();
    translate( width/2, height/2 );
    circle2 = RShape.createCircle(0, 0, 300).toPolygon();
    circle1 = circle2.diff(circle1);
    circle1.draw();
}
