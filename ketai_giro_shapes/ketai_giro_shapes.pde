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
  s0.start();
  s1.start();
  s2.start();
  s3.start();
  s4.start();
  s5.start();
  s6.start();
  s7.start();
}

void popultaion() {
  // starting x percent, starting y percent, speed multyplyer, size, color
  s0 = new Shapes(0.50, 0.78, 20.0, 4, #000000);
  s1 = new Shapes(0.63, 0.35, 14.0, 3.11, #0000FF);
  s2 = new Shapes(0.23, 0.97, 12.0, 2.44, #00FF00);
  s3 = new Shapes(0.46, 0.15, 7.0, 2.00, #00FFFF);
  s4 = new Shapes(0.69, 0.74, 3.5, 1.33, #FF0000);
  s5 = new Shapes(0.48, 0.14, 1.0, 1.00, #FF00FF);
  s6 = new Shapes(0.82, 0.47, 0.5, 0.67, #FFFF00);
  s7 = new Shapes(0.26, 0.59, 0.25, 0.33, #FFFFFF);
}

void draw() {
  if (frameCount%2 == 0) {
    background(#7f7f7f);
  }
  s0.all();
  s1.all();
  s2.all();
  s3.all();
  s4.all();
  s5.all();
  s6.all();
  s7.all();
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
