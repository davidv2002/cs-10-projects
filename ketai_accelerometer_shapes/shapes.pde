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

    if (cubeY < intSize/2) { 
      cubeY = intSize/2;
    }
    if (cubeX < intSize/2) { 
      cubeX = intSize/2;
    }
    if (cubeY > height-intSize/2) { 
      cubeY = height-intSize/2;
    }
    if (cubeX > width-intSize/2) { 
      cubeX = width-intSize/2;
    }
    fill(intColor);
    rect(cubeX, cubeY, intSize, intSize);
  }

  void tick() {
    cube();
    ball();
  }
}
