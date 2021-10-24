class Shapes {
  float startX, startY, intMulty, intSize, ballX, ballY, cubeX, cubeY;
  color intColor;
  Shapes (float startingX, float startingY, float multy, float sizeThing, color fillColor) {
    startX = (startingX * width);
    startY = (startingY * height);
    intMulty = (multy * (width / 1920.0));
    intColor = fillColor;
    intSize = (floor(sizeThing * 45) * (width / 1920.0));
  }

  void prep() {
    ballY = startY;
    ballX = startX;
    cubeY = startY;
    cubeX = startX;
  }

  void ball() {
    ballX = ballX+(xStore*intMulty);
    ballY = ballY+(yStore*intMulty);
    if (ballY < intSize) { 
      ballY = height-intSize;
    }
    if (ballX < intSize) { 
      ballX = width-intSize;
    }
    if (ballY > height-intSize) { 
      ballY = intSize;
    }
    if (ballX > width-intSize) { 
      ballX = intSize;
    }
    fill(intColor);
    circle(ballX, ballY, intSize*2);
  }

  void cube() {
    cubeX = (cubeX+xStore*intMulty);
    cubeY = (cubeY+yStore*intMulty);

    if (cubeY < intSize) { 
      cubeY = intSize;
    }
    if (cubeX < intSize) { 
      cubeX = intSize;
    }
    if (cubeY > height-intSize) { 
      cubeY = height-intSize;
    }
    if (cubeX > width-intSize) { 
      cubeX = width-intSize;
    }
    fill(intColor);
    square(cubeX, cubeY, intSize);
  }

  void tick() {
    cube();
    ball();
  }
}
