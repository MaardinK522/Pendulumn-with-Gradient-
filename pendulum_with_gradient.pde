float gravity = 20;
int numBobs = 10;
float damping = 1;
float bobSize = 30;
PVector originPoint;
Bob[] pens;
void setup() {
  frameRate(60);
  smooth();
  pens = new Bob[numBobs];
  float bobHeight = height * 0.3;
  originPoint = new PVector(width/2, height * 0.1);
  for (int a = 0; a < pens.length; a++) {
    pens[a] = new Bob(bobHeight);
    bobHeight += bobSize+5;
  }
  //fullScreen();
  size(600, 600);
}
void draw() {
  background(0);
  for (Bob bob : pens) {
    bob.origin = originPoint;
    bob.show();
    bob.update();
  }
  fill(125);
  rectMode(CENTER);
  rect(originPoint.x, originPoint.y, 30, 30);
}
