//Shifty Squares after 2 major setbacks. Power outages and blue screens of death. 
//Starter code from Justin Kopf

int x = 0;
int y = 0;
int sz = 50;
int theSeed = 0;
int scale = 0;
int r = 50;
int g = 136;
int b = 170;
float q = 220;

void setup() {
  size(500, 500);
  strokeWeight(1);
  noStroke();
}
void draw() {
  background(q);
  fill(r, g, b, 100);
  randomSeed(theSeed);
  x=0;
  y=0;
  while (x<=500)
  {
    while (y<=500) {
      float shiftx1=mouseX/50 * random(-1,1);
      float shiftx2=mouseX/50 * random(-1,1);
      float shiftx3=mouseX/50 * random(-1,1);
      float shiftx4=mouseX/50 * random(-1,1);
      float shifty1=mouseY/50 * random(-1,1);
      float shifty2=mouseY/50 * random(-1,1);
      float shifty3=mouseY/50 * random(-1,1);
      float shifty4=mouseY/50 * random(-1,1);
      beginShape();
      vertex(x+shiftx1, y+shifty1);
      vertex(x+sz+shiftx2, y+shifty2);
      vertex(x+sz+shiftx3, y+sz+shifty3);
      vertex(x+shiftx4, y+sz+shifty4);
      endShape();
      y=y+50;
    }
    y=0;
    x=x+50;
  }
  r = mouseX*2;
  g = mouseX-20;
  b = mouseY/3;
  q = random(0,220);
}
