void popultaion() {
  // starting x percent, starting y percent, speed multyplyer, size, color
  s0 = new Shapes(0.50, 0.78, 20.0, 4, #000000);
  s1 = new Shapes(0.63, 0.35, 14.0, 3.11, #0000FF);
  s2 = new Shapes(0.23, 0.97, 12.0, 2.44, #00FF00);
  s3 = new Shapes(0.46, 0.15, 7.0, 2.00, #00FFFF);
  s4 = new Shapes(0.69, 0.74, 3.5, 1.33, #FF0000);
  s5 = new Shapes(0.48, 0.14, 1.0, 1.00, #FF00FF);
  s6 = new Shapes(0.82, 0.47, 0.5, 0.67, #FFFF00);
  s7 = new Shapes(0.26, 0.59, 0.25, 0.33, #FFFFFF);
}

void startUp() {
  s0.prep();
  s1.prep();
  s2.prep();
  s3.prep();
  s4.prep();
  s5.prep();
  s6.prep();
  s7.prep();
}

void tickAll() {
  s0.tick();
  s1.tick();
  s2.tick();
  s3.tick();
  s4.tick();
  s5.tick();
  s6.tick();
  s7.tick();
}
