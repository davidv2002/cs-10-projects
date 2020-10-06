//variables for days
void Population () {
  // control booleans
  RGB = true;
  //variables for constants
  zero = 0;
  one = 1;
  two = 2;
  sixteen = 16;
  bitMax = 255;
  // variables for commonly used ratios
  offset = (width - height)/two;
  halfWidth = width/two;
  halfHeight = height/two;
  thickness = height/100;
  // face base variables
  faceX = halfWidth;
  faceY = halfHeight;
  faceDiameter = height;
  // common eye variables
  eyeY = height * 4/sixteen;
  eyeDiameter = height/7;
  pupilDiameter = eyeDiameter/3;
  // left eye variables
  leftEyeX = width * 6/sixteen;
  // right eye variables
  rightEyeX = width * 10/sixteen;
  // nose variables
  // top point variables
  noseTopX = faceX;
  noseTopY = height * 6/sixteen;
  // bottom point variables
  noseLeftX = width * 7/sixteen;
  noseRightX = width * 9/sixteen;
  noseBottomY = height * 9/sixteen;
  // mouth variables
  mouthLeftX = leftEyeX;
  mouthRightX = rightEyeX;
  mouthY = height * 12/sixteen;
  // exit button variables
  exitButtonX = width * 15/sixteen;
  exitButtonY = zero;
  exitButtonWidth = width * one/sixteen;
  exitButtonHeight = height * one/14;
  // color variables
  red = #ED2626;
  black = zero;
  white = bitMax;
  exitButtonXColor = #9B5454;
  measleColor = red;
  resetColor = white;
  // measles variables
  measleXLow = zero + offset;
  measleXHigh = height + offset;
  measleDiameterLow = height * one/80;
  measleDiameterHigh = height * one/40;
  // text variables
  xForExitButton = "X";
  // font variables
  fontSize = width * one/35;
  exitButtonFont = createFont ("Microsoft Sans Serif", 55);
  // magic variables
  magicFace = 1.55;
  magicFaceLeft = (halfWidth) - (height/magicFace);
  magicFaceRight = (halfWidth) + (height/magicFace);
  // blinking variables
  blinkCount = zero;
  blinkFrame = 10;
  blinkFrameLow = 60;
  blinkFrameHigh = 180;
  blinkTimeReset = 10;
  blinkTime = blinkTimeReset;
  // closed eye variables
  leftEyeLeftX = leftEyeX - height/15; 
  leftEyeRightX = leftEyeX + height/15; 
  rightEyeLeftX = rightEyeX - height/15; 
  rightEyeRightX = rightEyeX + height/15;
  // other variables
  reset = one;
};
