void setup() {
  size(1000,1000);
  
}
int x=100;
int y=40;

void draw() {
  background(20, 60, 90);
  makeMagical();
  for (int i=0; i< 300; i++){
    ellipse(getWormX(i),getWormY(i),40,40);
    fill(frameCount , (int)random(256),(int)random(256));
  }}
  float frequency = .01;
float noiseInterval = PI/2;

void makeMagical() {
     fill( 0, 0, 0, 10 );
     rect(0, 0, width, height);
     noStroke();
}

float getWormX(int i) {
     return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
     return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}