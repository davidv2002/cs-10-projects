import ketai.sensors.*;

// global variables
KetaiSensor sensor;

float xStore, yStore, xStart, yStart, circleSize, movemult;

void setup() {
  fullScreen();
  orientation(LANDSCAPE);
  sensor = new KetaiSensor(this);
  sensor.start();
  population();
}

void draw() {
  background(#ffffff);
  fill(#ff0000);
  circle(xStore, yStore, circleSize);
}


// left is -y
// right is +y
// forword is -x
// back is +x
// x,y,z force in m/s2
void onAccelerometerEvent(float x, float y, float z) {
  xStore = xStore+(y*movemult);
  yStore = yStore+(x*movemult);
  if (yStore < circleSize) { 
    yStore = circleSize;
  }
  if (xStore < circleSize) { 
    xStore = circleSize;
  }
  if (yStore > height-circleSize) { 
    yStore = height-circleSize;
  }
  if (xStore > width-circleSize) { 
    xStore = width-circleSize;
  }
}
