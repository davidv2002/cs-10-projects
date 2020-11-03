class Balls {
 float startX, startY, intX, intY, intMulty, intSize;
 color thing;
  Balls (float xs, float ys, float multy, color ball, float sizeThing) {
    startX = xs;
    startY = ys;
    intMulty = multy;
    thing = ball;
    intSize = sizeThing;
  }
  void start() {
    intY = startY;
    intX = startX;
  }
  void thing() {
    intX = intX+(xStore*intMulty);
    intY = intY+(yStore*intMulty);
    if (intY < intSize) { 
      intY = intSize;
    }
    if (intX < intSize) { 
      intX = intSize;
    }
    if (intY > height-intSize) { 
      intY = height-intSize;
    }
    if (intX > width-intSize) { 
      intX = width-intSize;
    }
    fill(thing);
    circle(intX, intY, intSize*2);
  }
}
