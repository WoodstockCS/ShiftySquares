int theSeed = 0;
int sz = 30;
float d;
float r = 0;
float g = 0;
float b = 0;
float theSeedTwo = 1;

void setup() {
  size(700, 700);
  background(220);
  noStroke();
  //noLoop();
}

void draw() {
  background(220);


  fill(0);
  //d = random(4);
  //textSize(40);
  //text(d, 50, 50);

  fill(r, g, b, 150);

  randomSeed(theSeed);

  int x = 0;
  int y = 0;
  while (x <= 500)
  {
    while (y <= 500)
    {     
      float shiftX1 = mouseX/10 * random(-5, 1);
      float shiftY1 = mouseY/10 * random(-2, 1);
      float shiftX2 = mouseX/10 * random(1, 1);
      float shiftY2 = mouseY/10 * random(1, 1);
      float shiftX3 = mouseX/10 * random(1, 10);
      float shiftY3 = mouseY/10 * random(1, 10);
      float shiftX4 = mouseX/10 * random(17, 18);
      float shiftY4 = mouseY/10 * random(-4, -4);
      beginShape();
      vertex(x+shiftX1, y+shiftY1);
      vertex(x+sz+shiftX2, y+shiftY2);
      vertex(x+sz+shiftX3, y+sz+shiftY3);
      vertex(x+shiftX4, y+sz+shiftY4);
      endShape();
      y = y + sz;
    }
    x = x + sz;
    y = 0;
  }
}
void mousePressed() {
  if (mouseButton == RIGHT) {
    d = (int)(random(4));
  }
}

void keyPressed() {
  if (key == 'j') 
  {
    theSeed = (int)random(1000);
  }

  if (key == 'r')
  {
    r += 5;
  }
  if (key == 'g')
  {
    g += 5;
  }
  if (key == 'b')
  {
    b += 5;
    println(r);
  }
}
