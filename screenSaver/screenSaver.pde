void setup() {
  fullScreen();
}

void draw() {
  background(random(256), random(256), random(256));
  int ohGodNO = round(random(10, 30));
  for ( int pleaseNO = 0; pleaseNO < ohGodNO; pleaseNO++) {
    fill(random(96,224), random(96, 224), random(96, 224));
    circle(random(width), random(height), random(200, 600));
  }
}
