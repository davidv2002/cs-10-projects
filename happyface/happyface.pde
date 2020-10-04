/**
 CS10 Q1 Processing Java project 1
 Happy face with measles
 By David Verbeek, davidv2002 on github
 last edited 20201003
 Note the width of the canves must be greater than or equal to the height or the draw code will not work
 */
// global variables
// face base variables
int faceX, faceY, faceDiameter;
// common eye variables
int eyeY, eyeDiameter, pupilDiameter;
// left eye variables
int leftEyeX;
// right eye variables
int rightEyeX;
// nose variables
int noseTopX, noseTopY, noseLeftX, noseRightX, noseBottomY;
// mouth variables
int mouthThickness, mouthLeftX, mouthRightX, mouthY;
// exit button variables
int exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight;
// color variables
color red, black, white, exitButtonXColor, measleColor, resetColor, exitButtonColor;
// measles variables
int measleDiameterLow, measleDiameterHigh;
float measleX, measleY, measleDiameter;
// text variables
String xForExitButton;
// font variables
int fontSize;
PFont exitButtonFont;
// other variables
int reset, offset;
float halfWidth;
// magic variables
float magicFace, magicFaceLeft, magicFaceRight;
// end of global variables

void setup() {
  size(1024, 768);
  //fullScreen();
  /* canves size safety.
   the drawing code will break if the canves is taller than it is wide.
   */
  if (height>width) {
    println("the width of the canvas must be greater than or equal to the height");
    println("the width is", width, "and the height is", height);
    exit();
  }
  // load variables
  Population();
  // set background color
  background(black);
  // draw base of the face
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}// end setup

void draw() {
  // do the class thing here to fix problems with null being used for height and width
  Mask maskLeft = new Mask(0, magicFaceLeft);
  Mask maskRight = new Mask(width, magicFaceRight);
  // measles
  // random
  measleX = random(height)+offset;
  measleY = random(height);
  measleDiameter = random(measleDiameterLow, measleDiameterHigh);
  // draw
  fill(measleColor);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  // reset color
  fill(resetColor);
  // remove unwanted
  maskLeft.magic();
  maskRight.magic();
  // drawing the face
  // left eye
  ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
  // pupil
  fill(black);
  ellipse(leftEyeX, eyeY, pupilDiameter, pupilDiameter);
  // reset color
  fill(resetColor);
  // right eye
  ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
  // pupil
  fill(black);
  ellipse(rightEyeX, eyeY, pupilDiameter, pupilDiameter);
  // reset color
  fill(resetColor);
  // nose
  triangle(noseTopX, noseTopY, noseLeftX, noseBottomY, noseRightX, noseBottomY);
  // mouth
  strokeWeight(mouthThickness);
  line(mouthLeftX, mouthY, mouthRightX, mouthY);
  // reset stroke weight after mouth
  strokeWeight(reset);
  // button
  // button hoverover
  if (mouseX>exitButtonX && mouseY>exitButtonY && mouseX<width && mouseY<exitButtonHeight) {
    exitButtonColor = white;
  } else {
    exitButtonColor = black;
  } 
  // draw exit button
  fill(exitButtonColor);
  rect(exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  // reset color
  fill(resetColor);
  // x on button
  fill(exitButtonXColor);
  textAlign(CENTER, CENTER);
  textFont(exitButtonFont, fontSize);
  text(xForExitButton, exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight);
  // reset color
  fill(resetColor);
  // end draw
}

/*
void keyPressed () {
 if (key == 'q' || key == 'Q') {
 exit();
 }
 }
 */

void mousePressed() {
  if (mouseX>exitButtonX && mouseY>exitButtonY && mouseX<width && mouseY<exitButtonHeight) {
    exit();
  }
}

// class for the magic edge mask
class Mask {
  // variables
  int outsideX; 
  float controlPointX;
  Mask(int inputOutsideX, float inputControlPointX) {
    outsideX = inputOutsideX;
    controlPointX = inputControlPointX;
  };
  // fill and shape code
  void magic() {
    fill(black);
    beginShape();
    vertex(outsideX, 0);
    vertex(halfWidth, 0);
    // the magic of the mask
    bezierVertex(controlPointX, 0, controlPointX, height, halfWidth, height);
    vertex(halfWidth, height);
    vertex(outsideX, height);
    vertex(outsideX, 0);
    endShape();
    // reset color
    fill(resetColor);
  };
}
