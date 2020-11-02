import ketai.sensors.*;

// global variables
KetaiSensor sensor;

float xStore, yStore, circleSize;
// starting x, starting y, speed multyplyer, color
Balls b1 = new Balls(45, 120, 7.0, #FF0000);
Balls b2 = new Balls(230, 136, 14.0, #00FF00);
Balls b3 = new Balls(350, 50, 3.5, #0000FF);
Balls b4 = new Balls(220, 95, 12.0, #FFFF00);
Balls b5 = new Balls(126, 254, 1.0, #FF00FF);
Balls b6 = new Balls(430, 376, 0.5, #00FFFF);
Balls b7 = new Balls(174, 645, 20.0, #000000);

void setup() {
  fullScreen();
  orientation(LANDSCAPE);
  sensor = new KetaiSensor(this);
  sensor.start();
  circleSize = width/100;
  b1.start();
  b2.start();
  b3.start();
  b4.start();
  b5.start();
  b6.start();
  b7.start();
}

void draw() {
  background(#ffffff);
  b1.thing();
  b2.thing();
  b3.thing();
  b4.thing();
  b5.thing();
  b6.thing();
  b7.thing();
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
