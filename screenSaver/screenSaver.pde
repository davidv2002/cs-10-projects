void setup() {
  fullScreen();
}

void draw() {
  background(random(256), random(256), random(256));
  int ohGodNO = round(random(10, 30));
  for (int pleaseNO = 0; pleaseNO < ohGodNO; pleaseNO++) {
    fill(random(96, 192), random(96, 192), random(96, 192));
    strokeWeight(random(5, 50));
    stroke(random(192, 256), random(192, 256), random(192, 256));
    ellipse(random(width), random(height), random(60, 600), random(60, 600));
  }
}
