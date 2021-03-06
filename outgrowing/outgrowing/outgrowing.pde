int res = 15;
float w = 40;
float dist = 5;
int rad = 6;
float angle = 1;
float inc = 0.9;
float[] a = new float[res];
float[] b = new float[res];
float[] c = new float[res];
float[] d = new float[res];
float[] h = new float[res];
float e;
float f;
float g;
float offX;

void setup() {
  //frameRate(30);
  size(displayWidth, displayHeight);
  smooth();
  //pixelDensity(2);
  e = - w/2;
  f = w/2;
  g = w/2 - w/res;
  for (int i = 0; i<res; i++) {
    a[i] = (- w/2) + (w/res)*i; 
    b[i] = (w/2) - (w/res)*(i+1);
    c[i] = e ;
    d[i] = f ;
    h[i] = g ;
  }
}

void draw() {
  background(235);
  translate(width/2, height/2);
  scale(10);
  rotate(radians(angle));
  angle += inc;
  inc *= 0.97;
  randomSeed(0);
  dist*= 0.96;
  for (int i = 0; i<res; i++) {
    h[i] += random(-dist, dist);
    c[i] += random(-dist, dist);
    d[i] += random(-dist, dist);
  }
  for (int i = 0; i<res; i++) {
    stroke(50);
    //noFill();
    fill(50, 40);
    circle(a[i], c[i], rad);
    circle(d[i], a[i], rad);
    circle(b[i], h[i], rad);
    beginShape();
    //fill();
    //noStroke();
    noFill();
    stroke(random(10, 60));
    strokeWeight(random(0.4));
    vertex(a[i], c[i]);
    vertex(d[i], a[i]);
    vertex(b[i], h[i]);
    endShape();
  }
}
