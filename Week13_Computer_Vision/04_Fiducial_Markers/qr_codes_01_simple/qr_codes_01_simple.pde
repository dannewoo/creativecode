import processing.video.*;
import com.google.zxing.*;
import java.awt.image.BufferedImage;

Capture cam; //Set up the camera
com.google.zxing.Reader reader = new com.google.zxing.qrcode.QRCodeReader();

String qrString = "";

void setup() {
  size(640, 240);
  background(0);
  cam = new Capture(this, width/2, height);
  cam.start();
}
 

void draw() {
  if (cam.available() == true) {
    background(0);
    cam.read();    
    image(cam, 0,0);
    try {
       // Now test to see if it has a QR code embedded in it
       LuminanceSource source = new BufferedImageLuminanceSource((BufferedImage)cam.getImage());
       BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));       
       Result result = reader.decode(bitmap); 
       //Once we get the results, we can then display something
       if (result.getText() != null) { 
          ResultPoint[] points = result.getResultPoints();
          //Draw some ellipses on at the control points
          for (int i = 0; i < points.length; i++) {
            fill(255, 0, 0);
            ellipse(points[i].getX(), points[i].getY(), 20,20);
          }
          textSize(20);
          fill(255);
          text(result.getText(), width/2 + 10, 10, width/2 - 20, height - 20);
       }
    } catch (Exception e) { }
  }
}

