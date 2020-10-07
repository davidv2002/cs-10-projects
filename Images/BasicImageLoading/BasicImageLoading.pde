// Global Variables
PImage pic;
int imageWidthRatio; 
float imageStartWidth, imageStartHeight, imageWidth, imageHeight, imageHeightRatio;


void setup() {
  size(768, 768); //fullScreen(), displayWidth & displayHeight
  pic = loadImage(""); // dimensions: width 3888, height 2592
  imageWidthRatio = 700/700;
  imageHeightRatio = 467/700;
  imageStartWidth = width * 0;
  imageStartHeight = height * 0 ;
  imageWidth = width * imageWidthRatio; // aspect ratio
  imageHeight = height * imageHeightRatio; // aspect ratio
}

void draw() {
  //fill(255);
  rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
}//End draw()

void keyPressed () { // Review KeyBoard Input
}//End keyPressed()

void mousePressed() { // Review mouseX and mouseY Key Variables and curser position input
}//End mousePressed()
