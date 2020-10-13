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
  void rave() {
    fill(raveColor);
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
