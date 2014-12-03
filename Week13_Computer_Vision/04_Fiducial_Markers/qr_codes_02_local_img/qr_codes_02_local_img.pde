import processing.video.*;
import com.google.zxing.*;
import java.awt.image.BufferedImage;

Capture cam; //Set up the camera
com.google.zxing.Reader reader = new com.google.zxing.qrcode.QRCodeReader();

PImage img;
String qrString = "";  //This is the last ISBN we acquired

void setup() {
  size(600, 400);
  background(0);
  cam = new Capture(this, 640, 480);
  cam.start();
}
 

void draw() {
  if (cam.available() == true) {
    background(0);
    cam.read();    
    try {
       // Now test to see if it has a QR code embedded in it
       LuminanceSource source = new BufferedImageLuminanceSource((BufferedImage)cam.getImage());
       BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));       
       Result result = reader.decode(bitmap); 
       //Once we get the results, we display something
       if (result.getText() != null) { 
          println(result.getText());
          img = loadImage(result.getText() + ".jpg");
          image(img, 0, 0);
        }
    } catch (Exception e) { }
  }
}

