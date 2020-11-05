void setup() {
  fullScreen();
}

void draw() {
  background(random(256), random(256), random(256));
  int ohGodNO = round(random(10, 30));
  for (int pleaseNO = 0; pleaseNO < ohGodNO; pleaseNO++) {
    fill(random(96, 192), random(96, 192), random(96, 192));
    strokeWeight(random(height/200, height/20));
    stroke(random(192, 256), random(192, 256), random(192, 256));
    ellipse(random(width), random(height), random(width/30, width/3), random(height/30, height/3));
  }
}
