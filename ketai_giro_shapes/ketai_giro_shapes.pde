import ketai.sensors.*;

// global variables
KetaiSensor sensor;
// 0.5 1.0 3.5 7.0 12.0 14.0 20.0
float xStore, yStore;
// starting x, starting y, speed multyplyer, color, ball size
Shapes s0 = new Shapes(174, 645, 20.0, #000000, 180);
Shapes s1 = new Shapes(430, 376, 14.0, #0000FF, 140);
Shapes s2 = new Shapes(126, 254, 12.0, #00FF00, 110);
Shapes s3 = new Shapes(220, 95, 7.0, #00FFFF, 90);
Shapes s4 = new Shapes(350, 50, 3.5, #FF0000, 60);
Shapes s5 = new Shapes(230, 136, 1.0, #FF00FF, 45);
Shapes s6 = new Shapes(45, 120, 0.5, #FFFF00, 30);
Shapes s7 = new Shapes(470, 26, 0.25, #FFFFFF, 15);


void setup() {
  fullScreen();
  orientation(LANDSCAPE);
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
  noStroke();
}

void draw() {
  background(#7f7f7f);
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
