// Global Variables
// control booleans
boolean RGB;
// variables for constants
int zero, one, two, sixteen, bitMax;
// variables for commonly used ratios
int offset, halfWidth, halfHeight, Thickness;
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
int mouthLeftX, mouthRightX, mouthY;
// exit button variables
int exitButtonX, exitButtonY, exitButtonWidth, exitButtonHeight;
// color variables
color red, black, white, exitButtonXColor, measleColor, resetColor, exitButtonColor;
// measles variables
int measleXLow, measleXHigh, measleDiameterLow, measleDiameterHigh;
float measleX, measleY, measleDiameter;
// RGB
int R, G, B;
// text variables
String xForExitButton;
// font variables
int fontSize;
PFont exitButtonFont;
// magic variables
float magicFace, magicFaceLeft, magicFaceRight;
// blinking variables
int blinkCount, blinkFrame, blinkTime;
// other variables
int reset;
// end of global variables



void setup() {
  size(1024, 768);
  frameRate(60);
  println("start of console");
  // load variables for days
  Population();
  // set background color
  background(black);
  // draw base of the face
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  // end of setup
}
void draw() {
  // measles
  // random
  measleX = random(measleXLow, measleXHigh);
  measleY = random(zero, height);
  measleDiameter = random(measleDiameterLow, measleDiameterHigh);
  // draw
  fill(measleColor);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  // reset color
  fill(resetColor);
  //new
  Eyes();
}


void Eyes () {
  println(" frame count is", blinkCount);
  println(" frames left is", blinkTime);
  if (blinkTime == 0) {
    blinkCount = 0;
    blinkTime = 10;
    blinkFrame = round(random(60, 180));
    println("new blink frame is", blinkFrame);
  } else if (blinkCount >= blinkFrame) {
    println("blink");
    strokeWeight(2);
    stroke(white);
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    stroke(black);
    strokeWeight(Thickness);
    //left eye line
    line(leftEyeX-height/15, eyeY, leftEyeX+height/15, eyeY);
    //right eye line
    line(rightEyeX-height/15, eyeY, rightEyeX+height/15, eyeY);
    strokeWeight(reset);
    blinkTime--;
  } else {
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
    blinkCount++;
  };
};