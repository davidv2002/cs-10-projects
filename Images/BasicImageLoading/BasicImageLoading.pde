// Global Variables
PImage pic;
int imageWidthRatio; 
float imageStartWidth, imageStartHeight, imageWidth, imageHeight, imageHeightRatio;


void setup() {
  size(768, 768); //fullScreen(), displayWidth & displayHeight
  pic = loadImage("https://davidv2002.github.io/Images/pic%20from%20bc.JPG"); // dimensions: width 3888, height 2592
  imageWidthRatio = 3888/3888;
  imageHeightRatio = 2592/3888;
  imageStartWidth = width * 0;
  imageStartHeight = height * 0 ;
  imageWidth = width * imageWidthRatio; // aspect ratio
  imageHeight = height * imageHeightRatio; // aspect ratio
}

void draw() {
  //fill(255);
  rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  image(pic, imageStartWidth, imageStartHeight);
}//End draw()

void keyPressed () { // Review KeyBoard Input
}//End keyPressed()

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}//End mousePressed()
