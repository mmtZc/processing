//inspired by thecodingtrain's fractal tree tutorial

float str = 4;

void setup() {
  size(800, 600);
  smooth();
  pixelDensity(2);
  frameRate(20);
}

void draw() {
  background(235);
  translate(width/2,height);
  fractalBranch(250);
  
}

void fractalBranch(float len) {
  strokeCap(PROJECT);
  stroke(50-len/2);
  line(0,0,0,-len);
  strokeWeight(str*len/100);
  if (len > 1) {
    push();
    translate(0, -len);
    rotate(45*len/10.);
    fractalBranch(len*0.7*random(0.99999,1.00001));
    pop();
    push();
    translate(0, -len);
    rotate(-45*random(0.9999,1.0001));
    fractalBranch(len*0.65);
    pop();
  }
}
