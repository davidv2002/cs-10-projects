/**
 CS10 Q1 Processing Java project 1
 Happy face with measles
 By David Verbeek, davidv2002 on github
 last edited 20201006
 Note the width of the canvas must be greater than 
 or equal to the height otherwise draw code will not work
 */
// Global Variables
// control booleans
boolean rave, unwell;
// variables for constants
int zero, one, two, sixteen, bitMax;
// variables for commonly used ratios
int offset, halfWidth, halfHeight, thickness;
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
color red, black, white, exitButtonXColor, measleColor, resetColor, exitButtonColor, raveColor;
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
int blinkCount, blinkFrame, blinkFrameLow, blinkFrameHigh, blinkTimeReset, blinkTime;
// closed eye variables
int leftEyeLeftX, leftEyeRightX, rightEyeLeftX, rightEyeRightX;
// other variables
int reset;
// end of global variables

void setup() {
  size(1024, 768);
  //fullScreen();
  frameRate(60);
  println("start of console");
  /* canves size safety.
   the drawing code will break if the canves is taller than it is wide.
   */
  if (height>width) {
    println("the width of the canvas must be greater than or equal to the height");
    println("the width is", width, "and the height is", height);
    //exit();
  }
  // load variables for days
  Population();
  // set background color
  background(black);
  // draw base of the face
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  // end of setup
}

void draw() {
  // do the class thing here to fix problems with null being used for height and width
  Mask maskLeft = new Mask(zero, magicFaceLeft);
  Mask maskRight = new Mask(width, magicFaceRight);
  // RGB
  R = round(random(zero, bitMax));
  G = round(random(zero, bitMax));
  B = round(random(zero, bitMax));
  raveColor = color(R, B, G);
  // measles
  // random
  measleX = random(measleXLow, measleXHigh);
  measleY = random(zero, height);
  measleDiameter = random(measleDiameterLow, measleDiameterHigh);
  // draw
  if ( rave == true) {
    // rgb
    fill(raveColor);
  } else {
    // red
    fill(measleColor);
  }
  if (unwell == true) {
    ellipse(measleX, measleY, measleDiameter, measleDiameter);
    // reset color
    fill(resetColor);
    // remove unwanted with the magic masks
    maskLeft.magic();
    maskRight.magic();
  };
  // drawing the face
  // creepy blinking eyes
  Eyes();
  // nose
  if ( rave == true) {
    fill(raveColor);
  } else {
    fill(resetColor);
  }
  triangle(noseTopX, noseTopY, noseLeftX, noseBottomY, noseRightX, noseBottomY);
  fill(resetColor);
  // mouth
  strokeWeight(thickness);
  if ( rave == true) {
    stroke(raveColor);
  }
  line(mouthLeftX, mouthY, mouthRightX, mouthY);
  // reset stroke weight after mouth
  stroke(black);
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
  // end of draw
}

// exit button mouse handler
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
    vertex(outsideX, zero);
    vertex(halfWidth, zero);
    // the magic of the mask
    bezierVertex(controlPointX, zero, controlPointX, height, halfWidth, height);
    vertex(halfWidth, height);
    vertex(outsideX, height);
    vertex(outsideX, zero);
    endShape();
    // reset color
    fill(resetColor);
  };
}

// blinking eyes function
void Eyes () {
  if (blinkTime == zero) {
    // stop blinking
    blinkCount = zero;
    blinkTime = blinkTimeReset;
    blinkFrame = round(random(blinkFrameLow, blinkFrameHigh));
    println("new blink frame is", blinkFrame);
  } else if (blinkCount == blinkFrame) {
    // blinking
    println("blink");
    // to fully cover open eye
    strokeWeight(two);
    // stroke to block out open eye
    if ( rave == true) {
      // rgb
      fill(raveColor);
      stroke(raveColor);
    } else {
      fill(resetColor);
      stroke(resetColor);
    };
    // block out open eyes
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    // reset stroke
    stroke(black);
    // closed eye thickness
    strokeWeight(thickness);
    // draw colsed eye lines
    // left eye line
    line(leftEyeLeftX, eyeY, leftEyeRightX, eyeY);
    // right eye line
    line(rightEyeLeftX, eyeY, rightEyeRightX, eyeY);
    // reset stroke weight
    strokeWeight(reset);
    blinkTime--;
    println("frames left is", blinkTime);
  } else {
    // not blinking
    // draw eyes like normal
    // eyes
    if ( rave == true) {
      // rgb
      fill(raveColor);
    } else {
      fill(resetColor);
    }
    ellipse(leftEyeX, eyeY, eyeDiameter, eyeDiameter);
    ellipse(rightEyeX, eyeY, eyeDiameter, eyeDiameter);
    fill(resetColor);
    // pupils
    fill(black);
    ellipse(leftEyeX, eyeY, pupilDiameter, pupilDiameter);
    ellipse(rightEyeX, eyeY, pupilDiameter, pupilDiameter);
    // reset color
    fill(resetColor);
    blinkCount++;
    println(" frame count is", blinkCount);
  };
};
