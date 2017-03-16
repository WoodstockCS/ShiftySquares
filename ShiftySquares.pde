//Justin Kopf
//Shifty Squares
int x=0;
int y=0;
int sz=50;
float shift=0;
int r=0;
int b=0;
int g=0;
int w=1;
int z=1;
int v=1;

void setup() {
  size(1500, 1000);
  background(255);
  noStroke();
}
void draw() {
  background(255);
  fill(r, g, b, 150);
  randomSeed(40);
  x=0;
  while (x<=1500) {

    while (y<=1000) {
      shift=mouseX/10* random(-1, 1);
      float shift1=mouseY/10* random(-1, 1);
      
      beginShape();
      vertex(x+shift, y+shift1);
      vertex(x+sz+shift, y+shift1);
      vertex(x+sz+shift, y+sz+shift1);
      vertex(x+shift, y+sz+shift1);
      endShape();
      y=y+sz;
    }
    x=x+sz;
    y=0;
  }
}
void keyPressed() {
  if (key == 'b') {
    b=b+w;
    if (b>=255) {
      w=-1;
    }
    if (b<=0) {
      w=1;
    }
  }
  if (key=='r') {
    r=r+z;

    if (r>=255) {
      z=-1;
    }
    if (r<=0) {
      z=1;
    }
  }
   if (key=='g') {
    g=g+v;

    if (g>=255) {
      v=-1;
    }
    if (g<=0) {
      v=1;
    }
  }
}
