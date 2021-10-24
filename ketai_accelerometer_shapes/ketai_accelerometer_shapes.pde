import ketai.sensors.*;

// global variables
KetaiSensor sensor;
float xStore, yStore;

Shapes s0, s1, s2, s3, s4, s5, s6, s7;

void setup() {
  fullScreen();
  orientation(LANDSCAPE);
  rectMode(RADIUS);
  noStroke();
  popultaion();
  sensor = new KetaiSensor(this);
  sensor.start();
  startUp();
}

void draw() {
  if (frameCount%2 == 0) {
    background(#7f7f7f);
  }
  tickAll();
}

// left is -y
// right is +y
// forword is -x
// back is +x
// x,y,z force in m/s2
void onAccelerometerEvent(float x, float y, float z) {
  xStore = y;
  yStore = x;
}
