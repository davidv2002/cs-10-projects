int numberPerFrame = 100;

void setup() {
  fullScreen();
  noStroke();
}
void draw() {
  for ( int i = 0; i < numberPerFrame; i++) {
    ball();
  }
}

void ball() {
  float ballX, ballY, ballSize;
  fill(random(255), random(255), random(255));
  ballX = random(width);
  ballY = random(height);
  ballSize = random(250)*randomGaussian();
  circle(ballX, ballY, ballSize);
}
