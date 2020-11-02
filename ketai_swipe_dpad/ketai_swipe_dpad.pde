import android.view.MotionEvent;
import ketai.ui.*;

KetaiGesture gesture;
float xDif, yDif;

void setup() {
  orientation(LANDSCAPE);
  fullScreen();
  gesture = new KetaiGesture(this);
  background(#7F7F7F);
}

void draw() {
}

void onFlick( float x, float y, float px, float py, float v) {
  xDif = px - x;
  yDif = py - y;
  if (abs(xDif) > abs(yDif)) {
    if (xDif > 0) {
      background(#ff0000);
      println("left");
    } else {
      background(#00ff00);
      println("right");
    }
  } else {
    if (yDif > 0) {
      background(#0000ff);
      println("up");
    } else {
      background(#FFFFFF);
      println("down");
    }
  }
}
