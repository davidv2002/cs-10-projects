import ketai.sensors.*;

// global variables
KetaiSensor sensor;
float xStore, yStore;

// starting x, starting y, speed multyplyer, ball size, color
Shapes s0 = new Shapes(174, 645, 20.0, 180, #000000);
Shapes s1 = new Shapes(430, 376, 14.0, 140, #0000FF);
Shapes s2 = new Shapes(126, 254, 12.0, 110, #00FF00);
Shapes s3 = new Shapes(220, 95, 7.0, 90, #00FFFF);
Shapes s4 = new Shapes(350, 50, 3.5, 60, #FF0000);
Shapes s5 = new Shapes(230, 136, 1.0, 45, #FF00FF);
Shapes s6 = new Shapes(45, 120, 0.5, 30, #FFFF00);
Shapes s7 = new Shapes(470, 26, 0.25, 15, #FFFFFF);


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
