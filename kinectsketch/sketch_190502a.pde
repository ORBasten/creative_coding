import org.openkinect.freenect.*;
import org.openkinect.freenect2.*;
import org.openkinect.processing.*;
import org.openkinect.tests.*;

Kinect Kinect;

void setup() {
  size(512, 424);
  Kinect = new Kinect(this);
  Kinect.initDepth();
  smooth();
  //Kinect.initDevice();
}
  
  void draw(){
    background(255);
    PImage img = Kinect.getDepthImage();
    image(img, 0,0);
  //look at every pixel
  int skip = 5;
  for(int x=0; x< img.width; x +=skip){
    for (int y=0;y < img.height; y += skip){
      int index= x+y * img.width;
      float h = brightness(img.pixels[index]);
      colorMode (HSB);
      fill(h, 255, 255);
      rect(x,y,h,h);
    }
  }

}
