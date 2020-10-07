// Global Variables
PImage pic;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight,imageWidthRatio, imageHeightRatio;


void setup() {
  size(1024, 768); //fullScreen(), displayWidth & displayHeight
  pic = loadImage("pic_from_bc.JPG"); // dimensions: width 700, height 467
  imageWidthRatio = 700.0/700.0; // needs to have .0 for float
  imageHeightRatio = 467.0/700.0; // needs to have .0 for float
  println("imageWidthRatio",imageWidthRatio);
  println("imageHeightRatio",imageHeightRatio);
  imageStartWidth = width * 0;
  imageStartHeight = height * 0 ;
  println("imageStartWidth is", imageStartWidth);
  println("imageStartHeight is", imageStartHeight);
  imageWidth = width * imageWidthRatio; // aspect ratio
  imageHeight = height * imageHeightRatio; // aspect ratio
  println("imageWidth",imageWidth);
  println("imageHeight is",imageHeight);
}

void draw() {
  fill(255);
  rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
}//End draw()

void keyPressed () { // Review KeyBoard Input
}//End keyPressed()

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}//End mousePressed()
