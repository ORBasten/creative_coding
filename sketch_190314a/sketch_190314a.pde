PImage img;
int smallpoint, largepoint;

void setup() { 
  size(640, 360);
  //insert image file name here, find where img needs to be to loafd
  img = loadImage ("img_lights.jpg");
  smallpoint = 4;
  largepoint = 40; 
  imageMode (CENTER);
  noStroke();
  background (255);
}

void draw() { 
  float pointillize = map (mouseX, 0, width, smallpoint, largepoint);
  int x =int(random(img.width));
  int y =int(random(img.height));
  color pix = img.get(x,y);
  fill(pix, 99);
  ellipse(x,y, pointillize, pointillize);
}
