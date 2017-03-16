//Patrick Bald
//Shifty Sqaures

int x = 0;
int y = 0;
int sz = 20;
int theSeed = 0;
float fill1 = 78;
float fill2 = 193;
float fill3 = 78;
float trans = 70;

//float shiftX = 0;
//float shiftY = 0;
void setup() {
  size(500, 500);
  background(0);
  noStroke();
}

void draw() {
  background(200);
  fill(fill1, fill2, fill3, trans);

  randomSeed(theSeed);

  x = 0;
  y = 0;
  while (x <= 500)
  {  
    while (y <= 500)
    {  
      float shiftX1 = mouseX/10 * random(-1, 1);
      float shiftY1 = mouseY/10 * random(-1, 1);
      float shiftX2 = mouseX/10 * random(-1, 1);
      float shiftY2 = mouseY/10 * random(-1, 1);
      float shiftX3 = mouseY/10 * random(-1, 1);
      float shiftY3 = mouseY/10 * random(-1, 1);
      float shiftY4 = mouseX/10 * random(-1, 1);
      float shiftX4 = mouseX/10 * random(-1, 1);
      beginShape();
      vertex(x + shiftX1, y + shiftY1);
      vertex(x + sz + shiftX2, y + shiftY2); 
      vertex(x + sz + shiftX3, y + sz + shiftY3);
      vertex(x + shiftX4, y + sz + shiftY4);
      endShape();
      y = y + sz;
    }
    x = x + sz;
    y = 0;
  }
}

void mousePressed() {
  theSeed = (int)random(100);
}

void keyPressed() {
  if (key == '1') {
    sz = 10;
  }
  if (key == '2') {
    sz = 20;
  }
  if (key == '3') {
    sz = 30;
  }
  if (key == '4') {
    sz = 40;
  }
  if (key == '5') {
    sz = 50;
  }
  if (key == 'c') {
    theSeed = (int)random(100);
    fill1 = random(255);
    fill2 = random(255);
    fill3 = random(255);
    trans = random(50, 150);
  }
}
