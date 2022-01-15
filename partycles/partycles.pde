//Mattia Zucchelli -- https://github.com/mmtZc/processing

int mLx = 200;
int mLy = 50;
float rada = 0;
float inc = 0.0;
float incS = 1.0;
float rotea = 0;

void setup() {
  size(2560, 1600, P3D);
  pixelDensity(displayDensity());
  smooth();
  frameRate(20);
}

void draw() {
  background(10);
  noCursor();
  
  float tempo = map(frameCount,0,200,-3.3,-2.3);
  float temporale = map(frameCount,0,200,-1000.,-750.);
  float tempoS = map(frameCount,0,2000,0.3,0.8);
  float tempoX = map(frameCount,0,1000,0,5.0);
  float absTempoX = 5.0-abs(5.0-tempoX);
  float q = 4.0+tempo;

  camera((width/2.0), (height/4.0)-(temporale), ((height/q) / tan(PI*30.0 / 180.0)), (80*sin(rotea))+width/2.0, -1000+(height/2.0), 0, 0, 1, 0); 
  randomSeed(4);
  float xoff = 0;
  rotea+=0.01;
  rotateX(0.6);
  rotateZ((tempoX/10.0)-1.0);
  
  for (float a = 1; a < mLx; a++) {
    float xOut = 100+((width-200)/mLx)*a;
    float sOffset = map(a, 1, mLx, -2, 10);
    for (float b = 1; b < mLy; b+=0.2) {
      float yOut = (height*0.25) + b * (height*0.75 - height*0.25)/mLy;
      float nn = map(noise(xoff, xoff, xoff), 0, 1, -14, 14);
      float mm = map(nn, -14, 14, 0.4, 4.8);
      stroke(235);
      strokeWeight(mm*tempoS);
      point(xOut, yOut, nn*sOffset*(exp(absTempoX)-1.0));
      xoff += 0.1;
    }
    rada+=0.002;
  }
}
