// Global Variables
// face
int faceX, faceY, faceDiameter;
// left eye
int leftEyeX, leftEyeY, leftEyeDiameter;
// right eye
int rightEyeX, rightEyeY, rightEyeDiameter;
// nose
int noseX1, noseX2, noseX3, noseY1, noseY2, noseY3;
// mouth
int mouthX1, mouthY1, mouthX2, mouthY2, mouthThick;
// button
int buttonX, buttonY, buttonWidth, buttonHeight;
// color
color buttonColour, red, silver, measlesColor, white, colorReset, x_red;
// measles
float measlesX, measlesY, measlesDiameter;
// text
String x;
PFont titleFont;
// other
int reset, offset;
// magic
float magic_face;
//end of global Variables

void setup() {
  //size(1024, 768);
  fullScreen();
  println("Screen Width is", displayWidth, "Screen Height is", displayHeight);
  // variables
  population();
  //set background color
  background(reset);
  // face
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
}// end setup

// class for the edge mask
class Mask { 
  int outSideX; 
  float cPointX;
  Mask(int outSideX_1, float cPointX_1) {
    outSideX = outSideX_1;
    cPointX = cPointX_1;
  };
  void thing() { 
    beginShape();
    vertex(outSideX, 0);
    vertex( width/2, 0);
    bezierVertex(cPointX, 0, cPointX, height, width/2, height);
    vertex(width/2, height);
    vertex(outSideX, height);
    vertex(outSideX, 0);
    endShape();
  };
}
void draw() {
  Mask maskRight = new Mask(width, (width/2)+(height/magic_face));
  Mask maskLeft = new Mask(0, (width/2)-(height/magic_face));
  // drawing the face
  // measles
  // random part
  measlesX = random(height)+offset;
  measlesY = random(height);
  measlesDiameter = random(height * 1/80, height * 1/40 );
  // draw part
  fill(measlesColor);
  ellipse(measlesX, measlesY, measlesDiameter, measlesDiameter);
  fill(colorReset);
  // left eye
  ellipse(leftEyeX, leftEyeY, leftEyeDiameter, leftEyeDiameter);
  // right eye
  ellipse(rightEyeX, rightEyeY, rightEyeDiameter, rightEyeDiameter);
  // nose
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  // mouth
  strokeWeight(mouthThick);
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  // reset strokeWeight after mouth
  strokeWeight(reset);
  // remove unwanted
  // if it worked
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
  fill(x_red);
  textAlign (CENTER, CENTER);
  textFont(titleFont, width*1/35);
  text(x, buttonX, buttonY, buttonWidth, buttonHeight);
  // reset color
  fill(colorReset);
  // end draw()
}

void keyPressed () {
  // quit keyboard button
  if ( key == 'q' || key == 'Q') {
    exit();
  }// end button
}// end keyPressed()

void mousePressed() {
  if (mouseY<buttonHeight && mouseY>buttonY && mouseX<width && mouseX>buttonX) {
    exit();
  }
  // end mousePressed()
}
