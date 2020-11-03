class Shapes {
  float startX, startY, intX, intY, intMulty, intSize;
  color thing;
  Shapes (float xs, float ys, float multy, color intColor, float sizeThing) {
    startX = xs;
    startY = ys;
    intMulty = multy;
    thing = intColor;
    intSize = sizeThing;
  }
  void start() {
    intY = startY;
    intX = startX;
  }
  void ball() {
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

  void cube() {
    intX = intX+(xStore*intMulty);
    intY = intY+(yStore*intMulty);
    if (intY < intSize/2) { 
      intY = intSize/2;
    }
    if (intX < intSize/2) { 
      intX = intSize/2;
    }
    if (intY > height-intSize/2) { 
      intY = height-intSize/2;
    }
    if (intX > width-intSize/2) { 
      intX = width-intSize/2;
    }
    fill(thing);
    rectMode(RADIUS);
    square(width-intX, height-intY, intSize);
  }
}
