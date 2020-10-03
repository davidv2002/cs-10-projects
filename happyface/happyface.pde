/*
  CS10 Q1 Processing Java project 1, Happy face with measles
 By David Verbeek, davidv2002 on github
 Note the width of the canves must be greater than or equal to the height
 */
// Global Variables
// face
int faceX, faceY, faceDiameter;
// left eye
int leftEyeX, leftEyeY, leftEyeDiameter, leftPupilDiameter;
// right eye
int rightEyeX, rightEyeY, rightEyeDiameter, rightPupilDiameter;
// nose
int noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
// mouth
int mouthThick, mouthX1, mouthY1, mouthX2, mouthY2;
// button
int buttonX, buttonY, buttonWidth, buttonHeight;
// color
color red, silver, measlesColor, white, colorReset, xRed, black, buttonColor;
// measles
float measlesX, measlesY, measlesDiameter;
// text
String xButton;
// font
PFont titleFont;
// other
int reset, offSet;
// magic
float magicFace;
// end of global Variables

void setup() {
  size(768, 768);
  //fullScreen();
  /* canves size safety.
   the drawing code will break if the canves is wider than it is tall.
   */
  if (height > width) {
    println("the width of the canves must be greater than or equal to the height");
    println("width is", width, "and height is", height);
    exit();
  }
  // variables
  population();
  //set background color
  background(black);
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
  // pupil
  fill(black);
  ellipse(leftEyeX, leftEyeY, leftPupilDiameter, leftPupilDiameter);
  // reset color
  fill(colorReset);
  // right eye
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  // pupil
  fill(black);
  ellipse(rightEyeX, rightEyeY, rightPupilDiameter, rightPupilDiameter);
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
  fill(black);
  maskRight.thing();
  maskLeft.thing();
  // button
  // button Hoverover
  if (mouseY<buttonHeight && mouseY>buttonY && mouseX<width && mouseX>buttonX) {
    buttonColor = silver;
  } else {
    buttonColor = black;
  } 
  // button draw
  fill(buttonColor);
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
