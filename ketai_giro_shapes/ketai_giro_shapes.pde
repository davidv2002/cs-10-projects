import ketai.sensors.*;

// global variables
KetaiSensor sensor;
// 0.5 1.0 3.5 7.0 12.0 14.0 20.0
float xStore, yStore;
// starting x, starting y, speed multyplyer, color, ball size
Shapes b0 = new Shapes(470, 26, 0.25, #FFFFFF, 15);
Shapes b1 = new Shapes(45, 120, 0.5, #FF0000, 30);
Shapes b2 = new Shapes(230, 136, 1.0, #00FF00, 45);
Shapes b3 = new Shapes(350, 50, 3.5, #0000FF, 60);
Shapes b4 = new Shapes(220, 95, 7.0, #FFFF00, 90);
Shapes b5 = new Shapes(126, 254, 12.0, #FF00FF, 110);
Shapes b6 = new Shapes(430, 376, 14.0, #00FFFF, 140);
Shapes b7 = new Shapes(174, 645, 20.0, #000000, 180);

void setup() {
  fullScreen();
  orientation(LANDSCAPE);
  sensor = new KetaiSensor(this);
  sensor.start();
  b0.start();
  b1.start();
  b2.start();
  b3.start();
  b4.start();
  b5.start();
  b6.start();
  b7.start();
}

void draw() {
  background(#7f7f7f);
  b0.ball();
  b0.cube();
  b1.ball();
  b1.cube();
  b2.ball();
  b2.cube();
  b3.ball();
  b3.cube();
  b4.ball();
  b4.cube();
  b5.ball();
  b5.cube();
  b6.ball();
  b6.cube();
  b7.ball();
  b7.cube();
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
