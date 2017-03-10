float x=0;
float y=0;
float fun2=random(10, 100);
float fun3=20;
float r=random(0, 255);
float g=random(0, 255);
float b=random(0, 255);
int theSeed=0;
int R=255;
int G=255;
int B=255;
int R2=0;
int G2=0;
int B2=0;

float s=0;
float sy=0;

float s2=0;
float sy2=0;

float s3=0;
float sy3=0;

float s4=0;
float sy4=0;



void setup() {
  size(400, 400);
  noStroke();
}

void draw() {


  float fun=height/fun3;
  fun2=random(10, 100);
  background(255);
  fill(r, g, b, 100);

  randomSeed(theSeed);

  y=0;
  while (y<=height) {
    x=0;


    while (x<=width) {

      r=random(R2, R);
      g=random(G2, G);
      b=random(B2, B);

      s=mouseX/fun2 * random(-1, 1);
      sy=mouseY/fun2 * random(-1, 1);

      s2=mouseX/fun2 * random(-1, 1);
      sy2=mouseY/fun2 * random(-1, 1);

      s3=mouseX/fun2 * random(-1, 1);
      sy3=mouseY/fun2 * random(-1, 1);

      s4=mouseX/fun2 * random(-1, 1);
      sy4=mouseY/fun2 * random(-1, 1);

      beginShape();
      vertex(x+s, y+sy);
      vertex(x+fun+s2, y+sy2);
      vertex(x+fun+s3, y+fun+sy3);
      vertex(x+s4, y+fun+sy4);
      endShape();

      x=x+fun;
    }
    y=y+fun;
  }
  //rect(mouseX-fun/2, mouseY-fun/2, fun, fun);
  
}
void mousePressed() {
  theSeed = (int)random(1000);
}
void keyPressed() {
  if (key=='r') {
    R=255;
    G=50;
    B=50;
    R2=100;
    G2=0;
    B2=0;
  }
  if (key=='g') {
    R=50;
    G=255;
    B=50;
    R2=0;
    G2=100;
    B2=0;
  }
  if (key=='b') {
    R=50;
    G=50;
    B=255;
    R2=0;
    G2=0;
    B2=100;
  }
  if (key==' ') {
    R=255;
    G=255;
    B=255;
    R2=0;
    G2=0;
    B2=0;
  }
}
