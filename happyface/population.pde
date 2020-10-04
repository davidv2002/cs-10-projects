void Population () {
  // face base variables
  faceX = width/2;
  faceY = height/2;
  faceDiameter = height;
  // common eye variables
  eyeY = height * 1/4;
  eyeDiameter = height/7;
  pupilDiameter = eyeDiameter/3;
  // left eye variables
  leftEyeX = width * 3/8;
  // right eye variables
  rightEyeX = width * 5/8;
  // nose variables
  // top point variables
  noseTopX = faceX;
  noseTopY = height * 3/8;
  // bottom point variables
  noseLeftX = width * 7/16;
  noseRightX = width * 9/16;
  noseBottomY = height * 9/16;
  // mouth variables
  mouthThickness = height/100;
  mouthLeftX = leftEyeX;
  mouthRightX = rightEyeX;
  mouthY = height * 3/4;
  // exit button variables
  exitButtonX = width * 15/16;
  exitButtonY = 0;
  exitButtonWidth = width * 1/16;
  exitButtonHeight = height * 1/14;
  // color variables
  red = #ED2626;
  black = 0;
  white = 255;
  exitButtonXColor = #9B5454;
  measleColor = red;
  resetColor = white;
  // measles variables
  measleDiameterLow = height * 1/80;
  measleDiameterHigh = height * 1/40;
  // text variables
  xForExitButton = "X";
  // font variables
  fontSize = width * 1/35;
  exitButtonFont = createFont ("Microsoft Sans Serif", 55);
  // other variables
  reset = 1;
  offset = (width - height)/2;
  halfWidth = width/2;
  // magic variables
  magicFace = 1.55;
  magicFaceLeft = (halfWidth) - (height/magicFace);
  magicFaceRight = (halfWidth) + (height/magicFace);
};
