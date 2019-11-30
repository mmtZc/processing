//play with stroke, strokeWeight, fill, total and factor for other variations


float total = 249;
float factor = total-1;
int r;
float rot = 0.1;
float inc = 0.0003;
float offset = 0.;

void setup() {
  size(900, 600);
  smooth();
  r = height/2-150;
}

PVector getVector(float index) {
  float angle = map(index, 0, total, 0, PI);
  PVector v = PVector.fromAngle(angle);
  v.mult(r);
  return v;
}

PVector getVector02(float index) {
  float angle02 = map(index, 0, total, 1, 26); //0,0
  PVector v02 = PVector.fromAngle(angle02);
  v02.mult(r);
  return v02;
}
void draw() {
  background(235);
  translate(width/2+random(-1, 1), height/2+random(-1, 1));
  rotate(PI/7);
  offset += 0.03;
  for (int i = 0; i < total; i++) {
    PVector a = getVector(i+offset);
    PVector b = getVector((i+offset) * factor);
    PVector c = getVector02(i-offset);
    PVector d = getVector02((i-offset) * factor);
    strokeWeight(0.5);
    noStroke();
    fill(25, 10);
    curveTightness(3*sin(rot));
    rot += inc;
    curve(c.x, c.y, a.x, a.y, b.x, b.y, d.x, d.y);
  }

  if (mousePressed) {
    saveFrame("card-####.png");
  }
}
