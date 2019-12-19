// Mattia Zucchelli -- https://github.com/mmtZc/processing

int total = 500;
int r;

void setup() {
 size(700,700); 
 r = 300;
 //smooth();
 //pixelDensity(2);
}

PVector getVector(float index) {
  float angle = map(index%total, 0, total, 0, PI/0.8);
  PVector v = PVector.fromAngle(angle);
  v.mult(r);
  return v;
}

void draw() {
  background(220); 
  shape(0,-120,0.45);
  translate(width/2,height/2);
  stroke(60);
  fill(230,220);
  strokeWeight(4);
  ellipse(0,-120,r-30,r-30);
}


void shape(float offsetX, float offsetY, float scaleV) {
  pushMatrix();
  translate(width/2 + offsetX, height/2 + offsetY);
  scale(scaleV);
  //rotate(0);
  for (int i = 0; i < total; i++) {
    PVector a = getVector(i);
    PVector b = getVector(PI-i);
    beginShape();
    noLoop();
    strokeWeight(random(0.6));
    stroke(2);
    noFill();
    curveVertex(a.x-1000, a.y);
    curveVertex(a.x, a.y);
    curveVertex(b.x, b.y);
    curveVertex(b.x+1000, b.y+1000);
    curveTightness(10); //play with tigthness for interesting variations
    endShape(CLOSE);
  }
  popMatrix();
}
