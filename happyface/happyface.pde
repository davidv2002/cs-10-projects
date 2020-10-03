// Global Variables
// face
int faceX, faceY, faceDiameter;
// left eye
int leftEyeX, leftEyeY, leftEyeDiameter, leftIrisDiameter;
// right eye
int rightEyeX, rightEyeY, rightEyeDiameter, rightIrisDiameter;
// nose
int noseX1, noseX2, noseX3, noseY1, noseY2, noseY3;
// mouth
int mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
// button
int buttonX, buttonY, buttonWidth, buttonHeight;
// color
color buttonColour, red, silver, measlesColor, white, colorReset, xRed, black;
// measles
float measlesX, measlesY, measlesDiameter;
// text
String xButton;
PFont titleFont;
// other
int reset, offSet;
// magic
float magicFace;
// end of global Variables

void setup() {
  size(1024, 768);
  //fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  // variables
  population();
  //set background color
  background(0, 255, 0);
  // face
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}// end setup

void draw() {
  Mask maskRight = new Mask(width, (width/2) + (height/magicFace));
  Mask maskLeft = new Mask(0, (width/2) - (height/magicFace));
  // drawing the face
  // measles
  // random part
  measlesX = random(height) + offSet;
  measlesY = random(height);
  measlesDiameter = random(height * 1/80, height * 1/40 );
  // draw part
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  // left eye
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  // iris
  fill(black);
  ellipse(leftEyeX, leftEyeY, leftIrisDiameter, leftIrisDiameter);
  // reset color
  fill(colorReset);
  // right eye
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  // iris
  fill(black);
  ellipse(rightEyeX, rightEyeY, rightIrisDiameter, rightIrisDiameter);
  // reset color
  fill(colorReset);
  // nose
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  // mouth
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  // reset strokeWeight after mouth
  strokeWeight(reset);
  // remove unwanted
  fill(reset);
  maskRight.thing();
  maskLeft.thing();
  // button
  // button Hoverover
  if (mouseY<buttonHeight && mouseY>buttonY && mouseX<width && mouseX>buttonX) {
    buttonColour = silver;
  } else {
    buttonColour = red;
  } 
  // button draw
  fill(buttonColour);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  // x on button
  fill(xRed);
  textAlign(CENTER, CENTER);
  textFont(titleFont, width * 1/35);
  text(xButton, buttonX, buttonY, buttonWidth, buttonHeight);
  // reset color
  fill(colorReset);
  // end draw
}

void keyPressed () {
  // quit keyboard button
  if (key == 'q' || key == 'Q') {
    exit();
    // end button
  }
  // end keyPressed
}

void mousePressed() {
  if (mouseY<buttonHeight && mouseY>buttonY && mouseX<width && mouseX>buttonX) {
    exit();
  }
  // end mousePressed
}
// class for the edge mask
class Mask { 
  int outSideX; 
  float cPointX;
  Mask(int outSideXInput, float cPointXInput) {
    outSideX = outSideXInput;
    cPointX = cPointXInput;
  };
  void thing() { 
    beginShape();
    vertex(outSideX, 0);
    vertex(width/2, 0);
    bezierVertex(cPointX, 0, cPointX, height, width/2, height);
    vertex(width/2, height);
    vertex(outSideX, height);
    vertex(outSideX, 0);
    endShape();
  };
}
