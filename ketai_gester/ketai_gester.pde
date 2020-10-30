import android.view.MotionEvent;

import ketai.ui.*;

KetaiGesture gesture;
float Size = 10;
float Angle = 0;
ArrayList<Thing> things = new ArrayList<Thing>();
float xDif, yDif;

void setup()
{
  orientation(LANDSCAPE);
  gesture = new KetaiGesture(this);
  textSize(32);
  textAlign(CENTER);
  imageMode(CENTER);
}

void draw()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(Angle);
  popMatrix();

  //if we have things lets reverse through them 
  //  so we can delete dead ones and draw live ones
  if (things.size() > 0)
    for (int i = things.size()-1; i >= 0; i--)
    {
      Thing t = things.get(i);
      if (t.isDead())
        things.remove(t);
      else
        t.draw();
    }
}
void onFlick( float x, float y, float px, float py, float v)
{
  things.add(new Thing("FLICK:"+v, x, y, px, py));
  xDif = abs(x - px);
  yDif = abs(y - py);
  if ( xDif > yDif){
    background(#ff0000);
  } else {
   background(#0000ff); 
  }
}
