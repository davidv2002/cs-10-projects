class Balls {
 float startX, startY, intX, intY, intMulty;
 color thing;
  Balls (float xs, float ys, float multy, color ball) {
    startX = xs;
    startY = ys;
    intMulty = multy;
    thing = ball;
  }
  void start() {
    intY = startY;
    intX = startX;
  }
  void thing() {
    intX = intX+(xStore*intMulty);
    intY = intY+(yStore*intMulty);
    if (intY < circleSize) { 
      intY = circleSize;
    }
    if (intX < circleSize) { 
      intX = circleSize;
    }
    if (intY > height-circleSize) { 
      intY = height-circleSize;
    }
    if (intX > width-circleSize) { 
      intX = width-circleSize;
    }
    fill(thing);
    circle(intX, intY, circleSize);
  }
}
