class Bob {
  PVector bob;
  PVector origin;
  float angle = 90;
  float bobLength;
  float angleV = 0;
  float angleA = 0;
  Bob(float bobLength) {
    this.origin = new PVector(mouseX, mouseY);
    this.bob = new PVector();
    this.bobLength = bobLength;
  }
  void show() {
    float g = map(bob.x, 0, width, 1, 255);
    float b = map(bob.y, 0, height, 1, 255);
    float r = 255;
    strokeWeight(5);
    stroke(r, g, b);
    line(origin.x, origin.y, bob.x, bob.y);
    fill(r, g, b);
    noStroke();
    circle(bob.x, bob.y, bobSize);
  }
  void update() {
    float force = gravity * sin(radians(angle));
    angleA = (-1 * force) / bobLength;
    angleV += angleA;
    angle+= angleV;
    bob.x = (bobLength * sin(radians(angle))) + origin.x;
    bob.y = (bobLength * cos(radians(angle))) + origin.y;
    angleV*=damping;
  }
}
